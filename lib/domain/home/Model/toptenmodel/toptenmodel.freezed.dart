// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toptenmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToptenModel _$ToptenModelFromJson(Map<String, dynamic> json) {
  return _ToptenModel.fromJson(json);
}

/// @nodoc
mixin _$ToptenModel {
  @JsonKey(name: "poster_path")
  String get posterpath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToptenModelCopyWith<ToptenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToptenModelCopyWith<$Res> {
  factory $ToptenModelCopyWith(
          ToptenModel value, $Res Function(ToptenModel) then) =
      _$ToptenModelCopyWithImpl<$Res, ToptenModel>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String posterpath});
}

/// @nodoc
class _$ToptenModelCopyWithImpl<$Res, $Val extends ToptenModel>
    implements $ToptenModelCopyWith<$Res> {
  _$ToptenModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ToptenModelImplCopyWith<$Res>
    implements $ToptenModelCopyWith<$Res> {
  factory _$$ToptenModelImplCopyWith(
          _$ToptenModelImpl value, $Res Function(_$ToptenModelImpl) then) =
      __$$ToptenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String posterpath});
}

/// @nodoc
class __$$ToptenModelImplCopyWithImpl<$Res>
    extends _$ToptenModelCopyWithImpl<$Res, _$ToptenModelImpl>
    implements _$$ToptenModelImplCopyWith<$Res> {
  __$$ToptenModelImplCopyWithImpl(
      _$ToptenModelImpl _value, $Res Function(_$ToptenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterpath = null,
  }) {
    return _then(_$ToptenModelImpl(
      posterpath: null == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToptenModelImpl implements _ToptenModel {
  const _$ToptenModelImpl(
      {@JsonKey(name: "poster_path") required this.posterpath});

  factory _$ToptenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToptenModelImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String posterpath;

  @override
  String toString() {
    return 'ToptenModel(posterpath: $posterpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToptenModelImpl &&
            (identical(other.posterpath, posterpath) ||
                other.posterpath == posterpath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterpath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToptenModelImplCopyWith<_$ToptenModelImpl> get copyWith =>
      __$$ToptenModelImplCopyWithImpl<_$ToptenModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToptenModelImplToJson(
      this,
    );
  }
}

abstract class _ToptenModel implements ToptenModel {
  const factory _ToptenModel(
          {@JsonKey(name: "poster_path") required final String posterpath}) =
      _$ToptenModelImpl;

  factory _ToptenModel.fromJson(Map<String, dynamic> json) =
      _$ToptenModelImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String get posterpath;
  @override
  @JsonKey(ignore: true)
  _$$ToptenModelImplCopyWith<_$ToptenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
