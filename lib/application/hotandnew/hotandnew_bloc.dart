import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/Hotandnew/fazad_or_repo/hotandnew_repo.dart';

import '../../domain/Hotandnew/Model/hotandnew.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  IhotandnewRepo hotandnewrepo;
  HotandnewBloc(this.hotandnewrepo) : super(HotandnewState.Initial()) {
    on<CommingSoon>((event, emit) async {
      emit(const HotandnewState(
          commingsoon: [],
          everyonewaching: [],
          isloading: true,
          isError: false));
      final result = await hotandnewrepo.commingSoondata();
      result.fold((mainfailure) {
        emit(const HotandnewState(
            commingsoon: [],
            everyonewaching: [],
            isloading: false,
            isError: true));
      }, (sucess) {
        emit(HotandnewState(
            commingsoon: sucess,
            everyonewaching: [],
            isloading: false,
            isError: false));
      });
    });
    on<Everyonewatching>((event, emit) => null);
  }
}
