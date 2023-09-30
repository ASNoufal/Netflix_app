part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getsearchdata() = Getsearchdata;
  const factory SearchEvent.initialsearch() = Initialsearch;
}
