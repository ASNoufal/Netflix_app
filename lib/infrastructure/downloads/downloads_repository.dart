import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/apikey/downloads_api.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDownloadrepo)
class Downloadrepostary implements IDownloadrepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getdownloadsdata() async {
    try {
      final Response response = await Dio().get(Apiservice.downloads);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadslist = (response.data["results"] as List)
            .map((e) => Downloads.fromJson(e))
            .toList();
        return right(downloadslist);
      }
      return const Left(MainFailure.serverfailure());
    } catch (e) {
      return const Left(MainFailure.clientfailure());
    }
  }
}
