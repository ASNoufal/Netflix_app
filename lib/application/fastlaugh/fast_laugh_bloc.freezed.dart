// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initialised,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialised value) Initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialised value)? Initialised,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialised value)? Initialised,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughEventCopyWith<$Res> {
  factory $FastLaughEventCopyWith(
          FastLaughEvent value, $Res Function(FastLaughEvent) then) =
      _$FastLaughEventCopyWithImpl<$Res, FastLaughEvent>;
}

/// @nodoc
class _$FastLaughEventCopyWithImpl<$Res, $Val extends FastLaughEvent>
    implements $FastLaughEventCopyWith<$Res> {
  _$FastLaughEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialisedCopyWith<$Res> {
  factory _$$InitialisedCopyWith(
          _$Initialised value, $Res Function(_$Initialised) then) =
      __$$InitialisedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialisedCopyWithImpl<$Res>
    extends _$FastLaughEventCopyWithImpl<$Res, _$Initialised>
    implements _$$InitialisedCopyWith<$Res> {
  __$$InitialisedCopyWithImpl(
      _$Initialised _value, $Res Function(_$Initialised) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialised implements Initialised {
  const _$Initialised();

  @override
  String toString() {
    return 'FastLaughEvent.Initialised()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialised);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initialised,
  }) {
    return Initialised();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initialised,
  }) {
    return Initialised?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initialised,
    required TResult orElse(),
  }) {
    if (Initialised != null) {
      return Initialised();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialised value) Initialised,
  }) {
    return Initialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialised value)? Initialised,
  }) {
    return Initialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialised value)? Initialised,
    required TResult orElse(),
  }) {
    if (Initialised != null) {
      return Initialised(this);
    }
    return orElse();
  }
}

abstract class Initialised implements FastLaughEvent {
  const factory Initialised() = _$Initialised;
}

/// @nodoc
mixin _$FastLaughState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Downloads> get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaughStateCopyWith<FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaughStateCopyWith<$Res> {
  factory $FastLaughStateCopyWith(
          FastLaughState value, $Res Function(FastLaughState) then) =
      _$FastLaughStateCopyWithImpl<$Res, FastLaughState>;
  @useResult
  $Res call({bool isloading, bool isError, List<Downloads> image});
}

/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res, $Val extends FastLaughState>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FastLaughStateCopyWith<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  factory _$$_FastLaughStateCopyWith(
          _$_FastLaughState value, $Res Function(_$_FastLaughState) then) =
      __$$_FastLaughStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, bool isError, List<Downloads> image});
}

/// @nodoc
class __$$_FastLaughStateCopyWithImpl<$Res>
    extends _$FastLaughStateCopyWithImpl<$Res, _$_FastLaughState>
    implements _$$_FastLaughStateCopyWith<$Res> {
  __$$_FastLaughStateCopyWithImpl(
      _$_FastLaughState _value, $Res Function(_$_FastLaughState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? image = null,
  }) {
    return _then(_$_FastLaughState(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ));
  }
}

/// @nodoc

class _$_FastLaughState implements _FastLaughState {
  const _$_FastLaughState(
      {required this.isloading,
      required this.isError,
      required final List<Downloads> image})
      : _image = image;

  @override
  final bool isloading;
  @override
  final bool isError;
  final List<Downloads> _image;
  @override
  List<Downloads> get image {
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image);
  }

  @override
  String toString() {
    return 'FastLaughState(isloading: $isloading, isError: $isError, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FastLaughState &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, isError,
      const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FastLaughStateCopyWith<_$_FastLaughState> get copyWith =>
      __$$_FastLaughStateCopyWithImpl<_$_FastLaughState>(this, _$identity);
}

abstract class _FastLaughState implements FastLaughState {
  const factory _FastLaughState(
      {required final bool isloading,
      required final bool isError,
      required final List<Downloads> image}) = _$_FastLaughState;

  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  List<Downloads> get image;
  @override
  @JsonKey(ignore: true)
  _$$_FastLaughStateCopyWith<_$_FastLaughState> get copyWith =>
      throw _privateConstructorUsedError;
}
