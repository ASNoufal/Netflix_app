part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required List<ToptenModel> toptendatas,
      required List<TvdramasModel> tvdramasdatas,
      required bool isError,
      required bool isloading}) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
      tvdramasdatas: [],
      isError: false,
      isloading: false,
      toptendatas: [],
    );
  }
}
