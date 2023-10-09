// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Everyonewatchingfreezed _$EveryonewatchingfreezedFromJson(
    Map<String, dynamic> json) {
  return _Everyonewatchingfreezed.fromJson(json);
}

/// @nodoc
mixin _$Everyonewatchingfreezed {
  @JsonKey(name: "poster_path")
  String get posterpath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EveryonewatchingfreezedCopyWith<Everyonewatchingfreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryonewatchingfreezedCopyWith<$Res> {
  factory $EveryonewatchingfreezedCopyWith(Everyonewatchingfreezed value,
          $Res Function(Everyonewatchingfreezed) then) =
      _$EveryonewatchingfreezedCopyWithImpl<$Res, Everyonewatchingfreezed>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String posterpath,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "overview") String overview});
}

/// @nodoc
class _$EveryonewatchingfreezedCopyWithImpl<$Res,
        $Val extends Everyonewatchingfreezed>
    implements $EveryonewatchingfreezedCopyWith<$Res> {
  _$EveryonewatchingfreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterpath = null,
    Object? title = null,
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EveryonewatchingfreezedImplCopyWith<$Res>
    implements $EveryonewatchingfreezedCopyWith<$Res> {
  factory _$$EveryonewatchingfreezedImplCopyWith(
          _$EveryonewatchingfreezedImpl value,
          $Res Function(_$EveryonewatchingfreezedImpl) then) =
      __$$EveryonewatchingfreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String posterpath,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "overview") String overview});
}

/// @nodoc
class __$$EveryonewatchingfreezedImplCopyWithImpl<$Res>
    extends _$EveryonewatchingfreezedCopyWithImpl<$Res,
        _$EveryonewatchingfreezedImpl>
    implements _$$EveryonewatchingfreezedImplCopyWith<$Res> {
  __$$EveryonewatchingfreezedImplCopyWithImpl(
      _$EveryonewatchingfreezedImpl _value,
      $Res Function(_$EveryonewatchingfreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterpath = null,
    Object? title = null,
    Object? overview = null,
  }) {
    return _then(_$EveryonewatchingfreezedImpl(
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$EveryonewatchingfreezedImpl implements _Everyonewatchingfreezed {
  const _$EveryonewatchingfreezedImpl(
      {@JsonKey(name: "poster_path") required this.posterpath,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "overview") required this.overview});

  factory _$EveryonewatchingfreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$EveryonewatchingfreezedImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String posterpath;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "overview")
  final String overview;

  @override
  String toString() {
    return 'Everyonewatchingfreezed(posterpath: $posterpath, title: $title, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveryonewatchingfreezedImpl &&
            (identical(other.posterpath, posterpath) ||
                other.posterpath == posterpath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterpath, title, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EveryonewatchingfreezedImplCopyWith<_$EveryonewatchingfreezedImpl>
      get copyWith => __$$EveryonewatchingfreezedImplCopyWithImpl<
          _$EveryonewatchingfreezedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EveryonewatchingfreezedImplToJson(
      this,
    );
  }
}

abstract class _Everyonewatchingfreezed implements Everyonewatchingfreezed {
  const factory _Everyonewatchingfreezed(
          {@JsonKey(name: "poster_path") required final String posterpath,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "overview") required final String overview}) =
      _$EveryonewatchingfreezedImpl;

  factory _Everyonewatchingfreezed.fromJson(Map<String, dynamic> json) =
      _$EveryonewatchingfreezedImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get posterpath;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$EveryonewatchingfreezedImplCopyWith<_$EveryonewatchingfreezedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
