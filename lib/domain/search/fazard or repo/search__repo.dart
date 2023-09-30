import 'package:dartz/dartz.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/search/searchmodel/model.dart';

abstract class IsearchRepo {
  Future<Either<MainFailure, List<SearchModel>>> searchservice(
      String searchquery);
}
