// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelImpl _$$SearchModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchModelImpl(
      id: json['id'] as int,
      orginaltitle: json['original_title'] as String,
      posterpath: json['poster_path'] as String,
    );

Map<String, dynamic> _$$SearchModelImplToJson(_$SearchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.orginaltitle,
      'poster_path': instance.posterpath,
    };
