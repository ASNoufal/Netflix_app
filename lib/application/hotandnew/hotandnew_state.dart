part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<Hotandnew> commingsoon,
    required List<Hotandnew> everyonewaching,
    required bool isloading,
    required bool isError,
  }) = _HotandnewState;
  const factory HotandnewState.Initial(HotandnewState()) = _Initial;
}
