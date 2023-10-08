import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/apikey/downloads_api.dart';
import 'package:netflix/domain/Hotandnew/fazad_or_repo/hotandnew_repo.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';

import '../../domain/Hotandnew/Model/hotandnew.dart';

@LazySingleton(as: IhotandnewRepo)
class Hotandnewrepo extends IhotandnewRepo {
  @override
  Future<Either<MainFailure, List<Hotandnew>>> commingSoondata() async {
    try {
      final response = await Dio().get(Apiservice.hotandnew);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("data from the hotand new reppoooo");
        print(response.data);
        final commingsoon = (response.data["results"] as List)
            .map((e) => Hotandnew.fromJson(e))
            .toList();

        return right(commingsoon);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Hotandnew>>> everyoneWachingdata() async {
    final response = await Dio().get(Apiservice.hotandnew);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final everyonewatching = (response.data["results"] as List)
            .map((e) => Hotandnew.fromJson(e))
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
