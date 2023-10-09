import 'package:dartz/dartz.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/everyonewatching/Model.dart';

abstract class Ieveryonerepo {
  Future<Either<MainFailure, List<Everyonewatchingfreezed>>>
      everyoneWachingdata();
}
