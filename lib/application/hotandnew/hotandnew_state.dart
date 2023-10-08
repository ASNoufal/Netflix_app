part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<Hotandnew> commingsoon,
    required List<Hotandnew> everyonewaching,
    required bool isloading,
    required bool isError,
  }) = _HotandnewState;
  factory HotandnewState.Initial() {
    return const HotandnewState(
        commingsoon: [], everyonewaching: [], isloading: true, isError: false);
  }
}
