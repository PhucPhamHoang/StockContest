// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contest_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContestCategoryEvent {
  String? get userid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userid) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userid)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userid)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestCategoryEventCopyWith<ContestCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestCategoryEventCopyWith<$Res> {
  factory $ContestCategoryEventCopyWith(ContestCategoryEvent value,
          $Res Function(ContestCategoryEvent) then) =
      _$ContestCategoryEventCopyWithImpl<$Res, ContestCategoryEvent>;
  @useResult
  $Res call({String? userid});
}

/// @nodoc
class _$ContestCategoryEventCopyWithImpl<$Res,
        $Val extends ContestCategoryEvent>
    implements $ContestCategoryEventCopyWith<$Res> {
  _$ContestCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = freezed,
  }) {
    return _then(_value.copyWith(
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FetchEventCopyWith<$Res>
    implements $ContestCategoryEventCopyWith<$Res> {
  factory _$$_FetchEventCopyWith(
          _$_FetchEvent value, $Res Function(_$_FetchEvent) then) =
      __$$_FetchEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userid});
}

/// @nodoc
class __$$_FetchEventCopyWithImpl<$Res>
    extends _$ContestCategoryEventCopyWithImpl<$Res, _$_FetchEvent>
    implements _$$_FetchEventCopyWith<$Res> {
  __$$_FetchEventCopyWithImpl(
      _$_FetchEvent _value, $Res Function(_$_FetchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = freezed,
  }) {
    return _then(_$_FetchEvent(
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchEvent implements _FetchEvent {
  const _$_FetchEvent({this.userid});

  @override
  final String? userid;

  @override
  String toString() {
    return 'ContestCategoryEvent.fetch(userid: $userid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchEvent &&
            (identical(other.userid, userid) || other.userid == userid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      __$$_FetchEventCopyWithImpl<_$_FetchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? userid) fetch,
  }) {
    return fetch(userid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? userid)? fetch,
  }) {
    return fetch?.call(userid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? userid)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(userid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchEvent implements ContestCategoryEvent {
  const factory _FetchEvent({final String? userid}) = _$_FetchEvent;

  @override
  String? get userid;
  @override
  @JsonKey(ignore: true)
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestCategoryData {
  List<PortfolioStockModel> get contestCategory =>
      throw _privateConstructorUsedError;
  double get totalCash => throw _privateConstructorUsedError;
  double get totalRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestCategoryDataCopyWith<ContestCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestCategoryDataCopyWith<$Res> {
  factory $ContestCategoryDataCopyWith(
          ContestCategoryData value, $Res Function(ContestCategoryData) then) =
      _$ContestCategoryDataCopyWithImpl<$Res, ContestCategoryData>;
  @useResult
  $Res call(
      {List<PortfolioStockModel> contestCategory,
      double totalCash,
      double totalRate});
}

/// @nodoc
class _$ContestCategoryDataCopyWithImpl<$Res, $Val extends ContestCategoryData>
    implements $ContestCategoryDataCopyWith<$Res> {
  _$ContestCategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contestCategory = null,
    Object? totalCash = null,
    Object? totalRate = null,
  }) {
    return _then(_value.copyWith(
      contestCategory: null == contestCategory
          ? _value.contestCategory
          : contestCategory // ignore: cast_nullable_to_non_nullable
              as List<PortfolioStockModel>,
      totalCash: null == totalCash
          ? _value.totalCash
          : totalCash // ignore: cast_nullable_to_non_nullable
              as double,
      totalRate: null == totalRate
          ? _value.totalRate
          : totalRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContestCategoryDataCopyWith<$Res>
    implements $ContestCategoryDataCopyWith<$Res> {
  factory _$$_ContestCategoryDataCopyWith(_$_ContestCategoryData value,
          $Res Function(_$_ContestCategoryData) then) =
      __$$_ContestCategoryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PortfolioStockModel> contestCategory,
      double totalCash,
      double totalRate});
}

/// @nodoc
class __$$_ContestCategoryDataCopyWithImpl<$Res>
    extends _$ContestCategoryDataCopyWithImpl<$Res, _$_ContestCategoryData>
    implements _$$_ContestCategoryDataCopyWith<$Res> {
  __$$_ContestCategoryDataCopyWithImpl(_$_ContestCategoryData _value,
      $Res Function(_$_ContestCategoryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contestCategory = null,
    Object? totalCash = null,
    Object? totalRate = null,
  }) {
    return _then(_$_ContestCategoryData(
      contestCategory: null == contestCategory
          ? _value._contestCategory
          : contestCategory // ignore: cast_nullable_to_non_nullable
              as List<PortfolioStockModel>,
      totalCash: null == totalCash
          ? _value.totalCash
          : totalCash // ignore: cast_nullable_to_non_nullable
              as double,
      totalRate: null == totalRate
          ? _value.totalRate
          : totalRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ContestCategoryData implements _ContestCategoryData {
  const _$_ContestCategoryData(
      {final List<PortfolioStockModel> contestCategory = const [],
      this.totalCash = 0,
      this.totalRate = 0})
      : _contestCategory = contestCategory;

  final List<PortfolioStockModel> _contestCategory;
  @override
  @JsonKey()
  List<PortfolioStockModel> get contestCategory {
    if (_contestCategory is EqualUnmodifiableListView) return _contestCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contestCategory);
  }

  @override
  @JsonKey()
  final double totalCash;
  @override
  @JsonKey()
  final double totalRate;

  @override
  String toString() {
    return 'ContestCategoryData(contestCategory: $contestCategory, totalCash: $totalCash, totalRate: $totalRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContestCategoryData &&
            const DeepCollectionEquality()
                .equals(other._contestCategory, _contestCategory) &&
            (identical(other.totalCash, totalCash) ||
                other.totalCash == totalCash) &&
            (identical(other.totalRate, totalRate) ||
                other.totalRate == totalRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contestCategory),
      totalCash,
      totalRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContestCategoryDataCopyWith<_$_ContestCategoryData> get copyWith =>
      __$$_ContestCategoryDataCopyWithImpl<_$_ContestCategoryData>(
          this, _$identity);
}

abstract class _ContestCategoryData implements ContestCategoryData {
  const factory _ContestCategoryData(
      {final List<PortfolioStockModel> contestCategory,
      final double totalCash,
      final double totalRate}) = _$_ContestCategoryData;

  @override
  List<PortfolioStockModel> get contestCategory;
  @override
  double get totalCash;
  @override
  double get totalRate;
  @override
  @JsonKey(ignore: true)
  _$$_ContestCategoryDataCopyWith<_$_ContestCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestCategoryState {
  ContestCategoryData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestCategoryData data) init,
    required TResult Function(ContestCategoryData data) loading,
    required TResult Function(ContestCategoryData data) success,
    required TResult Function(ContestCategoryData data, String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestCategoryData data)? init,
    TResult? Function(ContestCategoryData data)? loading,
    TResult? Function(ContestCategoryData data)? success,
    TResult? Function(ContestCategoryData data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestCategoryData data)? init,
    TResult Function(ContestCategoryData data)? loading,
    TResult Function(ContestCategoryData data)? success,
    TResult Function(ContestCategoryData data, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestCategoryStateCopyWith<ContestCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestCategoryStateCopyWith<$Res> {
  factory $ContestCategoryStateCopyWith(ContestCategoryState value,
          $Res Function(ContestCategoryState) then) =
      _$ContestCategoryStateCopyWithImpl<$Res, ContestCategoryState>;
  @useResult
  $Res call({ContestCategoryData data});

  $ContestCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ContestCategoryStateCopyWithImpl<$Res,
        $Val extends ContestCategoryState>
    implements $ContestCategoryStateCopyWith<$Res> {
  _$ContestCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestCategoryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContestCategoryDataCopyWith<$Res> get data {
    return $ContestCategoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res>
    implements $ContestCategoryStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestCategoryData data});

  @override
  $ContestCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$ContestCategoryStateCopyWithImpl<$Res, _$_InitState>
    implements _$$_InitStateCopyWith<$Res> {
  __$$_InitStateCopyWithImpl(
      _$_InitState _value, $Res Function(_$_InitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_InitState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestCategoryData,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final ContestCategoryData data;

  @override
  String toString() {
    return 'ContestCategoryState.init(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      __$$_InitStateCopyWithImpl<_$_InitState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestCategoryData data) init,
    required TResult Function(ContestCategoryData data) loading,
    required TResult Function(ContestCategoryData data) success,
    required TResult Function(ContestCategoryData data, String errorMessage)
        error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestCategoryData data)? init,
    TResult? Function(ContestCategoryData data)? loading,
    TResult? Function(ContestCategoryData data)? success,
    TResult? Function(ContestCategoryData data, String errorMessage)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestCategoryData data)? init,
    TResult Function(ContestCategoryData data)? loading,
    TResult Function(ContestCategoryData data)? success,
    TResult Function(ContestCategoryData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitState implements ContestCategoryState {
  const factory _InitState(final ContestCategoryData data) = _$_InitState;

  @override
  ContestCategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $ContestCategoryStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestCategoryData data});

  @override
  $ContestCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ContestCategoryStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LoadingState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestCategoryData,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState(this.data);

  @override
  final ContestCategoryData data;

  @override
  String toString() {
    return 'ContestCategoryState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      __$$_LoadingStateCopyWithImpl<_$_LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestCategoryData data) init,
    required TResult Function(ContestCategoryData data) loading,
    required TResult Function(ContestCategoryData data) success,
    required TResult Function(ContestCategoryData data, String errorMessage)
        error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestCategoryData data)? init,
    TResult? Function(ContestCategoryData data)? loading,
    TResult? Function(ContestCategoryData data)? success,
    TResult? Function(ContestCategoryData data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestCategoryData data)? init,
    TResult Function(ContestCategoryData data)? loading,
    TResult Function(ContestCategoryData data)? success,
    TResult Function(ContestCategoryData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ContestCategoryState {
  const factory _LoadingState(final ContestCategoryData data) = _$_LoadingState;

  @override
  ContestCategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $ContestCategoryStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestCategoryData data});

  @override
  $ContestCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$ContestCategoryStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SuccessState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestCategoryData,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.data);

  @override
  final ContestCategoryData data;

  @override
  String toString() {
    return 'ContestCategoryState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      __$$_SuccessStateCopyWithImpl<_$_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestCategoryData data) init,
    required TResult Function(ContestCategoryData data) loading,
    required TResult Function(ContestCategoryData data) success,
    required TResult Function(ContestCategoryData data, String errorMessage)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestCategoryData data)? init,
    TResult? Function(ContestCategoryData data)? loading,
    TResult? Function(ContestCategoryData data)? success,
    TResult? Function(ContestCategoryData data, String errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestCategoryData data)? init,
    TResult Function(ContestCategoryData data)? loading,
    TResult Function(ContestCategoryData data)? success,
    TResult Function(ContestCategoryData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements ContestCategoryState {
  const factory _SuccessState(final ContestCategoryData data) = _$_SuccessState;

  @override
  ContestCategoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $ContestCategoryStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestCategoryData data, String errorMessage});

  @override
  $ContestCategoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ContestCategoryStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_ErrorState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestCategoryData,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState(this.data, {required this.errorMessage});

  @override
  final ContestCategoryData data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContestCategoryState.error(data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestCategoryData data) init,
    required TResult Function(ContestCategoryData data) loading,
    required TResult Function(ContestCategoryData data) success,
    required TResult Function(ContestCategoryData data, String errorMessage)
        error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestCategoryData data)? init,
    TResult? Function(ContestCategoryData data)? loading,
    TResult? Function(ContestCategoryData data)? success,
    TResult? Function(ContestCategoryData data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestCategoryData data)? init,
    TResult Function(ContestCategoryData data)? loading,
    TResult Function(ContestCategoryData data)? success,
    TResult Function(ContestCategoryData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ContestCategoryState {
  const factory _ErrorState(final ContestCategoryData data,
      {required final String errorMessage}) = _$_ErrorState;

  @override
  ContestCategoryData get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
