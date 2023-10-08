import 'package:dartz/dartz.dart';
import 'package:netflix/domain/Hotandnew/Model/hotandnew.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';

abstract class IhotandnewRepo {
  Future<Either<MainFailure, List<Hotandnew>>> commingSoondata();
  Future<Either<MainFailure, List<Hotandnew>>> everyoneWachingdata();
}
