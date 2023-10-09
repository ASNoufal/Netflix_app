import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/apikey/downloads_api.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/home/Model/TvdramasModel/tvdramasmodel.dart';

import 'package:netflix/domain/home/Model/toptenmodel/toptenmodel.dart';

import 'package:netflix/domain/home/fazard%20or%20repo/toptenandtvdrama_repo.dart';

@LazySingleton(as: Itoptenandtvdramas)
class Homerepoclass implements Itoptenandtvdramas {
  @override
  Future<Either<MainFailure, List<ToptenModel>>> gettoptenModel() async {
    final response = await Dio().get(Apiservice.top10home);
    print(response.data);

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("data on topten");
        print(response.data);
        final commingsoon = (response.data["results"] as List)
            .map((e) => ToptenModel.fromJson(e))
            .toList();

        return right(commingsoon);
      } else {
        print(response.statusCode);
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailure.clientfailure());
    }
  }

  @override
  Future<Either<MainFailure, List<TvdramasModel>>> gettvdramasModel() async {
    try {
      final response = await Dio().get(Apiservice.tvdramasinhome);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("tvdrama repo");
        final commingsoon = (response.data["results"] as List)
            .map((e) => TvdramasModel.fromJson(e))
            .toList();
        print(commingsoon);

        return right(commingsoon);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientfailure());
    }
  }
}
