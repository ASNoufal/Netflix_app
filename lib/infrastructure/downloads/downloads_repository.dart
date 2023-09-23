import 'package:dartz/dartz.dart';
import 'package:netflix/apikey/downloads_api.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart';
import 'package:dio/dio.dart';

class Downloadrepostary implements IDownloadrepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getdownloadsdata() async {
    try {
      final Response response = await Dio().get(Apiservice.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Downloads> downloadslist = [];
        for (final raw in response.data) {
          downloadslist.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        print(downloadslist);
        return right(downloadslist);
      }
      return const Left(MainFailure.serverfailure());
    } catch (e) {
      return const Left(MainFailure.clientfailure());
    }
  }
}
