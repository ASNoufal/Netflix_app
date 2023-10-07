part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState(
      {required bool isloading,
      required bool isError,
      required List<Downloads> image}) = _FastLaughState;

  factory FastLaughState.initial() {
    return const FastLaughState(isloading: true, isError: false, image: []);
  }
}
