part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getsearchdata(String query) = Getsearchdata;
  const factory SearchEvent.initialsearch() = Initialsearch;
}
