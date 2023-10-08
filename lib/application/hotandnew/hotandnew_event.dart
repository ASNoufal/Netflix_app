part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.commingSoon() = CommingSoon;
  const factory HotandnewEvent.everyonewatching() = _Everyonewatching;
}
