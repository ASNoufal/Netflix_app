import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/MainFailure/MainFailure.dart';
import 'package:netflix/domain/downloads/Model/Modeldownload.dart';
import 'package:netflix/domain/downloads/fazardsORrepo/downloads__repo.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final ValueNotifier<Set<int>> valueNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  IDownloadrepo downloadrepo;
  FastLaughBloc(this.downloadrepo) : super(FastLaughState.initial()) {
    on<Initialised>((event, emit) async {
      emit(const FastLaughState(isloading: true, isError: false, image: []));
      //first call the api
      final result = await downloadrepo.getdownloadsdata();
      // need to update in the UI
      result.fold(
          (MainFailure mainFailure) => emit(
              const FastLaughState(isloading: false, isError: true, image: [])),
          (success) => emit(FastLaughState(
              isloading: false, isError: false, image: success)));
    });
    on<Likedbutton>((event, emit) {
      valueNotifier.value.add(event.index);
      valueNotifier.notifyListeners();
    });
    on<Dislikebutton>((event, emit) {
      valueNotifier.value.remove(event.index);
      valueNotifier.notifyListeners();
    });
  }
}
