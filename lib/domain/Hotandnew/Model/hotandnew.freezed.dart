// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotandnew.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hotandnew _$HotandnewFromJson(Map<String, dynamic> json) {
  return _Hotandnew.fromJson(json);
}

/// @nodoc
mixin _$Hotandnew {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterpath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releasedate => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotandnewCopyWith<Hotandnew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotandnewCopyWith<$Res> {
  factory $HotandnewCopyWith(Hotandnew value, $Res Function(Hotandnew) then) =
      _$HotandnewCopyWithImpl<$Res, Hotandnew>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "poster_path") String posterpath,
      @JsonKey(name: "release_date") String releasedate,
      @JsonKey(name: "overview") String overview});
}

/// @nodoc
class _$HotandnewCopyWithImpl<$Res, $Val extends Hotandnew>
    implements $HotandnewCopyWith<$Res> {
  _$HotandnewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? posterpath = null,
    Object? releasedate = null,
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
      releasedate: null == releasedate
          ? _value.releasedate
          : releasedate // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotandnewImplCopyWith<$Res>
    implements $HotandnewCopyWith<$Res> {
  factory _$$HotandnewImplCopyWith(
          _$HotandnewImpl value, $Res Function(_$HotandnewImpl) then) =
      __$$HotandnewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "poster_path") String posterpath,
      @JsonKey(name: "release_date") String releasedate,
      @JsonKey(name: "overview") String overview});
}

/// @nodoc
class __$$HotandnewImplCopyWithImpl<$Res>
    extends _$HotandnewCopyWithImpl<$Res, _$HotandnewImpl>
    implements _$$HotandnewImplCopyWith<$Res> {
  __$$HotandnewImplCopyWithImpl(
      _$HotandnewImpl _value, $Res Function(_$HotandnewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? posterpath = null,
    Object? releasedate = null,
    Object? overview = null,
  }) {
    return _then(_$HotandnewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
      releasedate: null == releasedate
          ? _value.releasedate
          : releasedate // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotandnewImpl implements _Hotandnew {
  const _$HotandnewImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "poster_path") required this.posterpath,
      @JsonKey(name: "release_date") required this.releasedate,
      @JsonKey(name: "overview") required this.overview});

  factory _$HotandnewImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotandnewImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "poster_path")
  final String posterpath;
  @override
  @JsonKey(name: "release_date")
  final String releasedate;
  @override
  @JsonKey(name: "overview")
  final String overview;

  @override
  String toString() {
    return 'Hotandnew(id: $id, title: $title, posterpath: $posterpath, releasedate: $releasedate, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotandnewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterpath, posterpath) ||
                other.posterpath == posterpath) &&
            (identical(other.releasedate, releasedate) ||
                other.releasedate == releasedate) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, posterpath, releasedate, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotandnewImplCopyWith<_$HotandnewImpl> get copyWith =>
      __$$HotandnewImplCopyWithImpl<_$HotandnewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotandnewImplToJson(
      this,
    );
  }
}

abstract class _Hotandnew implements Hotandnew {
  const factory _Hotandnew(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "poster_path") required final String posterpath,
          @JsonKey(name: "release_date") required final String releasedate,
          @JsonKey(name: "overview") required final String overview}) =
      _$HotandnewImpl;

  factory _Hotandnew.fromJson(Map<String, dynamic> json) =
      _$HotandnewImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "poster_path")
  String get posterpath;
  @override
  @JsonKey(name: "release_date")
  String get releasedate;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$HotandnewImplCopyWith<_$HotandnewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
