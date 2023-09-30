import 'package:freezed_annotation/freezed_annotation.dart';
part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "original_title") required String orginaltitle,
    @JsonKey(name: "poster_path") required String posterpath,
  }) = _SearchModel;
  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}
