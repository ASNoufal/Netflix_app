import 'package:dartz/dartz.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/home/Model/TvdramasModel/tvdramasmodel.dart';
import 'package:netflix/domain/home/Model/toptenmodel/toptenmodel.dart';

abstract class Itoptenandtvdramas {
  Future<Either<MainFailure, List<ToptenModel>>> gettoptenModel();
  Future<Either<MainFailure, List<TvdramasModel>>> gettvdramasModel();
}
