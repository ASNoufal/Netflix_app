// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
mixin _$SearchModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get orginaltitle => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterpath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "original_title") String orginaltitle,
      @JsonKey(name: "poster_path") String posterpath});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orginaltitle = null,
    Object? posterpath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orginaltitle: null == orginaltitle
          ? _value.orginaltitle
          : orginaltitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
          _$SearchModelImpl value, $Res Function(_$SearchModelImpl) then) =
      __$$SearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "original_title") String orginaltitle,
      @JsonKey(name: "poster_path") String posterpath});
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
      _$SearchModelImpl _value, $Res Function(_$SearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orginaltitle = null,
    Object? posterpath = null,
  }) {
    return _then(_$SearchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orginaltitle: null == orginaltitle
          ? _value.orginaltitle
          : orginaltitle // ignore: cast_nullable_to_non_nullable
              as String,
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "original_title") required this.orginaltitle,
      @JsonKey(name: "poster_path") required this.posterpath});

  factory _$SearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "original_title")
  final String orginaltitle;
  @override
  @JsonKey(name: "poster_path")
  final String posterpath;

  @override
  String toString() {
    return 'SearchModel(id: $id, orginaltitle: $orginaltitle, posterpath: $posterpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orginaltitle, orginaltitle) ||
                other.orginaltitle == orginaltitle) &&
            (identical(other.posterpath, posterpath) ||
                other.posterpath == posterpath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orginaltitle, posterpath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      __$$SearchModelImplCopyWithImpl<_$SearchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchModelImplToJson(
      this,
    );
  }
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "original_title") required final String orginaltitle,
          @JsonKey(name: "poster_path") required final String posterpath}) =
      _$SearchModelImpl;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$SearchModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "original_title")
  String get orginaltitle;
  @override
  @JsonKey(name: "poster_path")
  String get posterpath;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
