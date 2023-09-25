import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadrepo _downloadrepo;
  DownloadsBloc(this._downloadrepo) : super(DownloadsState.initial()) {
    on<_Getdownloadsimage>((event, emit) async {
      emit(state.copyWith(isloading: true, optionforfailureorsuccess: none()));

      final Either<MainFailure, List<Downloads>> downloadoption =
          await _downloadrepo.getdownloadsdata();
      print(downloadoption.toString);
      emit(downloadoption.fold(
          (failure) => state.copyWith(
              isloading: false, optionforfailureorsuccess: Some(Left(failure))),
          (success) => state.copyWith(
              isloading: true,
              downloads: success,
              optionforfailureorsuccess: Some(right(success)))));
    });
  }
}
