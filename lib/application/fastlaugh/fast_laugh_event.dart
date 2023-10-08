part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.Initialised() = Initialised;
  const factory FastLaughEvent.likedbutton({required int index}) = Likedbutton;
  const factory FastLaughEvent.dislikebutton({required int index}) =
      Dislikebutton;
}
