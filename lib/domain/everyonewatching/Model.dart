import 'package:freezed_annotation/freezed_annotation.dart';
part 'Model.freezed.dart';
part 'Model.g.dart';

@freezed
class Everyonewatchingfreezed with _$Everyonewatchingfreezed {
  const factory Everyonewatchingfreezed({
    @JsonKey(name: "poster_path") required String posterpath,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "overview") required String overview,
  }) = _Everyonewatchingfreezed;
  factory Everyonewatchingfreezed.fromJson(Map<String, dynamic> json) =>
      _$EveryonewatchingfreezedFromJson(json);
}
