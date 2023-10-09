// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tvdramasmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvdramasModel _$TvdramasModelFromJson(Map<String, dynamic> json) {
  return _TvdramasModel.fromJson(json);
}

/// @nodoc
mixin _$TvdramasModel {
  @JsonKey(name: "poster_path")
  String get posterpath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvdramasModelCopyWith<TvdramasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvdramasModelCopyWith<$Res> {
  factory $TvdramasModelCopyWith(
          TvdramasModel value, $Res Function(TvdramasModel) then) =
      _$TvdramasModelCopyWithImpl<$Res, TvdramasModel>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String posterpath});
}

/// @nodoc
class _$TvdramasModelCopyWithImpl<$Res, $Val extends TvdramasModel>
    implements $TvdramasModelCopyWith<$Res> {
  _$TvdramasModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterpath = null,
  }) {
    return _then(_value.copyWith(
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvdramasModelImplCopyWith<$Res>
    implements $TvdramasModelCopyWith<$Res> {
  factory _$$TvdramasModelImplCopyWith(
          _$TvdramasModelImpl value, $Res Function(_$TvdramasModelImpl) then) =
      __$$TvdramasModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String posterpath});
}

/// @nodoc
class __$$TvdramasModelImplCopyWithImpl<$Res>
    extends _$TvdramasModelCopyWithImpl<$Res, _$TvdramasModelImpl>
    implements _$$TvdramasModelImplCopyWith<$Res> {
  __$$TvdramasModelImplCopyWithImpl(
      _$TvdramasModelImpl _value, $Res Function(_$TvdramasModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterpath = null,
  }) {
    return _then(_$TvdramasModelImpl(
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvdramasModelImpl implements _TvdramasModel {
  const _$TvdramasModelImpl(
      {@JsonKey(name: "poster_path") required this.posterpath});

  factory _$TvdramasModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvdramasModelImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String posterpath;

  @override
  String toString() {
    return 'TvdramasModel(posterpath: $posterpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvdramasModelImpl &&
            (identical(other.posterpath, posterpath) ||
                other.posterpath == posterpath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterpath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvdramasModelImplCopyWith<_$TvdramasModelImpl> get copyWith =>
      __$$TvdramasModelImplCopyWithImpl<_$TvdramasModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvdramasModelImplToJson(
      this,
    );
  }
}

abstract class _TvdramasModel implements TvdramasModel {
  const factory _TvdramasModel(
          {@JsonKey(name: "poster_path") required final String posterpath}) =
      _$TvdramasModelImpl;

  factory _TvdramasModel.fromJson(Map<String, dynamic> json) =
      _$TvdramasModelImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get posterpath;
  @override
  @JsonKey(ignore: true)
  _$$TvdramasModelImplCopyWith<_$TvdramasModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
