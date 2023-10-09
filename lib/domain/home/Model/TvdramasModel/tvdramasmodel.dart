import 'package:freezed_annotation/freezed_annotation.dart';
part 'tvdramasmodel.freezed.dart';
part 'tvdramasmodel.g.dart';

@freezed
class TvdramasModel with _$TvdramasModel {
  const factory TvdramasModel(
          {@JsonKey(name: "poster_path") required String posterpath}) =
      _TvdramasModel;

  factory TvdramasModel.fromJson(Map<String, dynamic> json) =>
      _$TvdramasModelFromJson(json);
}
