// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotandnew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotandnewImpl _$$HotandnewImplFromJson(Map<String, dynamic> json) =>
    _$HotandnewImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      posterpath: json['poster_path'] as String,
      releasedate: json['release_date'] as String,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$HotandnewImplToJson(_$HotandnewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterpath,
      'release_date': instance.releasedate,
      'overview': instance.overview,
    };
