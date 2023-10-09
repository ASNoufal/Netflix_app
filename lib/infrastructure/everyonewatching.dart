import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/everyonewatching/Model.dart';
import 'package:netflix/domain/everyonewatching/everyonerepo/everyone_repo.dart';

import '../apikey/downloads_api.dart';

@LazySingleton(as: Ieveryonerepo)
class Everyonewatchingrepo implements Ieveryonerepo {
  @override
  Future<Either<MainFailure, List<Everyonewatchingfreezed>>>
      everyoneWachingdata() async {
    final response = await Dio().get(Apiservice.everyonewatchingservice);
    try {
      print(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final everyonewatching = (response.data["results"] as List)
            .map((e) => Everyonewatchingfreezed.fromJson(e))
            .toList();
        return right(everyonewatching);
      } else {
        return left(const MainFailure.serverfailure());
      }
    } catch (e) {
      return left(const MainFailure.clientfailure());
    }
  }
}
