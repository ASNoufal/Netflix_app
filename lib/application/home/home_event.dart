part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.top10() = Top10;
  const factory HomeEvent.tvdramasevent() = Tvdramasevent;
}
