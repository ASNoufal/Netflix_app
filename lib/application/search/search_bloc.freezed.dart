// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getsearchdata,
    required TResult Function() initialsearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getsearchdata,
    TResult? Function()? initialsearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getsearchdata,
    TResult Function()? initialsearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getsearchdata value) getsearchdata,
    required TResult Function(Initialsearch value) initialsearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getsearchdata value)? getsearchdata,
    TResult? Function(Initialsearch value)? initialsearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getsearchdata value)? getsearchdata,
    TResult Function(Initialsearch value)? initialsearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetsearchdataImplCopyWith<$Res> {
  factory _$$GetsearchdataImplCopyWith(
          _$GetsearchdataImpl value, $Res Function(_$GetsearchdataImpl) then) =
      __$$GetsearchdataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GetsearchdataImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetsearchdataImpl>
    implements _$$GetsearchdataImplCopyWith<$Res> {
  __$$GetsearchdataImplCopyWithImpl(
      _$GetsearchdataImpl _value, $Res Function(_$GetsearchdataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetsearchdataImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetsearchdataImpl implements Getsearchdata {
  const _$GetsearchdataImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.getsearchdata(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetsearchdataImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetsearchdataImplCopyWith<_$GetsearchdataImpl> get copyWith =>
      __$$GetsearchdataImplCopyWithImpl<_$GetsearchdataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getsearchdata,
    required TResult Function() initialsearch,
  }) {
    return getsearchdata(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getsearchdata,
    TResult? Function()? initialsearch,
  }) {
    return getsearchdata?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getsearchdata,
    TResult Function()? initialsearch,
    required TResult orElse(),
  }) {
    if (getsearchdata != null) {
      return getsearchdata(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getsearchdata value) getsearchdata,
    required TResult Function(Initialsearch value) initialsearch,
  }) {
    return getsearchdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getsearchdata value)? getsearchdata,
    TResult? Function(Initialsearch value)? initialsearch,
  }) {
    return getsearchdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getsearchdata value)? getsearchdata,
    TResult Function(Initialsearch value)? initialsearch,
    required TResult orElse(),
  }) {
    if (getsearchdata != null) {
      return getsearchdata(this);
    }
    return orElse();
  }
}

abstract class Getsearchdata implements SearchEvent {
  const factory Getsearchdata(final String query) = _$GetsearchdataImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$GetsearchdataImplCopyWith<_$GetsearchdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialsearchImplCopyWith<$Res> {
  factory _$$InitialsearchImplCopyWith(
          _$InitialsearchImpl value, $Res Function(_$InitialsearchImpl) then) =
      __$$InitialsearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialsearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitialsearchImpl>
    implements _$$InitialsearchImplCopyWith<$Res> {
  __$$InitialsearchImplCopyWithImpl(
      _$InitialsearchImpl _value, $Res Function(_$InitialsearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialsearchImpl implements Initialsearch {
  const _$InitialsearchImpl();

  @override
  String toString() {
    return 'SearchEvent.initialsearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialsearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getsearchdata,
    required TResult Function() initialsearch,
  }) {
    return initialsearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? getsearchdata,
    TResult? Function()? initialsearch,
  }) {
    return initialsearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getsearchdata,
    TResult Function()? initialsearch,
    required TResult orElse(),
  }) {
    if (initialsearch != null) {
      return initialsearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Getsearchdata value) getsearchdata,
    required TResult Function(Initialsearch value) initialsearch,
  }) {
    return initialsearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Getsearchdata value)? getsearchdata,
    TResult? Function(Initialsearch value)? initialsearch,
  }) {
    return initialsearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Getsearchdata value)? getsearchdata,
    TResult Function(Initialsearch value)? initialsearch,
    required TResult orElse(),
  }) {
    if (initialsearch != null) {
      return initialsearch(this);
    }
    return orElse();
  }
}

abstract class Initialsearch implements SearchEvent {
  const factory Initialsearch() = _$InitialsearchImpl;
}

/// @nodoc
mixin _$SearchState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<SearchModel> get searchModel => throw _privateConstructorUsedError;
  List<Downloads> get initdata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isloading,
      bool isError,
      List<SearchModel> searchModel,
      List<Downloads> initdata});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? searchModel = null,
    Object? initdata = null,
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
      searchModel: null == searchModel
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
      initdata: null == initdata
          ? _value.initdata
          : initdata // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      bool isError,
      List<SearchModel> searchModel,
      List<Downloads> initdata});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? isError = null,
    Object? searchModel = null,
    Object? initdata = null,
  }) {
    return _then(_$SearchStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      searchModel: null == searchModel
          ? _value._searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as List<SearchModel>,
      initdata: null == initdata
          ? _value._initdata
          : initdata // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required this.isloading,
      required this.isError,
      required final List<SearchModel> searchModel,
      required final List<Downloads> initdata})
      : _searchModel = searchModel,
        _initdata = initdata;

  @override
  final bool isloading;
  @override
  final bool isError;
  final List<SearchModel> _searchModel;
  @override
  List<SearchModel> get searchModel {
    if (_searchModel is EqualUnmodifiableListView) return _searchModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchModel);
  }

  final List<Downloads> _initdata;
  @override
  List<Downloads> get initdata {
    if (_initdata is EqualUnmodifiableListView) return _initdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initdata);
  }

  @override
  String toString() {
    return 'SearchState(isloading: $isloading, isError: $isError, searchModel: $searchModel, initdata: $initdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._searchModel, _searchModel) &&
            const DeepCollectionEquality().equals(other._initdata, _initdata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      isError,
      const DeepCollectionEquality().hash(_searchModel),
      const DeepCollectionEquality().hash(_initdata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isloading,
      required final bool isError,
      required final List<SearchModel> searchModel,
      required final List<Downloads> initdata}) = _$SearchStateImpl;

  @override
  bool get isloading;
  @override
  bool get isError;
  @override
  List<SearchModel> get searchModel;
  @override
  List<Downloads> get initdata;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
