import 'package:freezed_annotation/freezed_annotation.dart';
part 'toptenmodel.freezed.dart';
part 'toptenmodel.g.dart';

@freezed
class ToptenModel with _$ToptenModel {
  const factory ToptenModel({
    @JsonKey(name: "poster_path") required String posterpath,
  }) = _ToptenModel;

  factory ToptenModel.fromJson(Map<String, dynamic> json) =>
      _$ToptenModelFromJson(json);
}
