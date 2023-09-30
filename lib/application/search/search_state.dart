part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required bool isloading,
      required bool isError,
      required List<SearchModel> searchModel,
      required List<Downloads> initdata}) = _SearchState;

  factory SearchState.initial() {
    return const SearchState(
        isloading: false, isError: false, searchModel: [], initdata: []);
  }
}
