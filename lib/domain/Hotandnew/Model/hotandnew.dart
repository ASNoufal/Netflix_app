import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotandnew.freezed.dart';
part 'hotandnew.g.dart';

@freezed
class Hotandnew with _$Hotandnew {
  const factory Hotandnew({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "poster_path") required String posterpath,
    @JsonKey(name: "release_date") required String releasedate,
    @JsonKey(name: "overview") required String overview,
  }) = _Hotandnew;
  factory Hotandnew.fromJson(Map<String, dynamic> json) =>
      _$HotandnewFromJson(json);
}
