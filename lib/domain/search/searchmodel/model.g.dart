// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchModel _$$_SearchModelFromJson(Map<String, dynamic> json) =>
    _$_SearchModel(
      id: json['id'] as int,
      orginaltitle: json['original_title'] as String,
      posterpath: json['poster_path'] as String,
    );

Map<String, dynamic> _$$_SearchModelToJson(_$_SearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.orginaltitle,
      'poster_path': instance.posterpath,
    };
