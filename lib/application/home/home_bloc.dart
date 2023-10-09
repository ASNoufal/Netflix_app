import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/home/Model/TvdramasModel/tvdramasmodel.dart';

import 'package:netflix/domain/home/Model/toptenmodel/toptenmodel.dart';
import 'package:netflix/domain/home/fazard%20or%20repo/toptenandtvdrama_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Itoptenandtvdramas toptenandtvdramas;

  HomeBloc(this.toptenandtvdramas) : super(HomeState.initial()) {
    on<Top10>((event, emit) async {
      emit(const HomeState(
          toptendatas: [],
          isError: false,
          isloading: false,
          tvdramasdatas: []));
      final result = await toptenandtvdramas.gettoptenModel();
      result.fold((mainfailure) {
        return emit(const HomeState(
            toptendatas: [],
            isError: true,
            isloading: false,
            tvdramasdatas: []));
      }, (sucess) {
        emit(HomeState(
            toptendatas: sucess,
            isError: false,
            isloading: false,
            tvdramasdatas: state.tvdramasdatas));
      });
    });
    on<Tvdramasevent>((event, emit) async {
      emit(const HomeState(
          toptendatas: [],
          isError: false,
          isloading: false,
          tvdramasdatas: []));
      final result = await toptenandtvdramas.gettvdramasModel();
      result.fold((mainfailure) {
        return emit(const HomeState(
            toptendatas: [],
            isError: true,
            isloading: false,
            tvdramasdatas: []));
      }, (sucess) {
        emit(HomeState(
            toptendatas: state.toptendatas,
            isError: false,
            isloading: false,
            tvdramasdatas: sucess));
      });
    });
  }
}
