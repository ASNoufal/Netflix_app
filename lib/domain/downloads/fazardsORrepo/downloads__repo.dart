import 'package:dartz/dartz.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';

abstract class IDownloadrepo {
  Future<Either<MainFailure, List<Downloads>>> getdownloadsdata();
}
