import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/apikey/downloads_api.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/search/fazard%20or%20repo/search__repo.dart';
import 'package:netflix/domain/search/searchmodel/model.dart';

@LazySingleton(as: IsearchRepo)
class Search implements IsearchRepo {
  @override
  Future<Either<MainFailure, List<SearchModel>>> searchservice(
      {required String searchquery}) async {
    try {
      final response = await Dio()
          .get(Apiservice.search, queryParameters: {"query": searchquery});
      print(response.data);
      print("dkdkdkdkdk");

      if (response.statusCode == 200 || response.statusCode == 201) {
        // need some chagnges and look on it
        final searchresult = (response.data['results'] as List)
            .map((e) => SearchModel.fromJson(e))
            .toList();

        return right(searchresult);
      } else {
        return left(const MainFailure.serverfailure());
      }
    } catch (e) {
      print(e.toString());
      return left(const MainFailure.clientfailure());
    }
  }
}
