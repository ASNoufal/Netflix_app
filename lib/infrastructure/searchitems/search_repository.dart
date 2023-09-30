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
      String searchquery) async {
    try {
      final response = await Dio()
          .get(Apiservice.search, queryParameters: {"query": searchquery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.data);
        // need some chagnges and look on it

        return right(response.data);
      } else {
        return left(const MainFailure.serverfailure());
      }
    } catch (e) {
      return left(const MainFailure.clientfailure());
    }
  }
}
