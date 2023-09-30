import 'package:freezed_annotation/freezed_annotation.dart';
part 'Modeldownload.freezed.dart';
part 'Modeldownload.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads(
          {@JsonKey(name: "poster_path") required String? posterPath,
          @JsonKey(name: "original_title") required String? orginaltitle}) =
      _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
