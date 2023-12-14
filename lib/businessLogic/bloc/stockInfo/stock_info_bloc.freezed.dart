// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code) fetch,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? code)? fetch,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code)? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_ResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_ResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockInfoEventCopyWith<$Res> {
  factory $StockInfoEventCopyWith(
          StockInfoEvent value, $Res Function(StockInfoEvent) then) =
      _$StockInfoEventCopyWithImpl<$Res, StockInfoEvent>;
}

/// @nodoc
class _$StockInfoEventCopyWithImpl<$Res, $Val extends StockInfoEvent>
    implements $StockInfoEventCopyWith<$Res> {
  _$StockInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchEventCopyWith<$Res> {
  factory _$$_FetchEventCopyWith(
          _$_FetchEvent value, $Res Function(_$_FetchEvent) then) =
      __$$_FetchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code});
}

/// @nodoc
class __$$_FetchEventCopyWithImpl<$Res>
    extends _$StockInfoEventCopyWithImpl<$Res, _$_FetchEvent>
    implements _$$_FetchEventCopyWith<$Res> {
  __$$_FetchEventCopyWithImpl(
      _$_FetchEvent _value, $Res Function(_$_FetchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$_FetchEvent(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FetchEvent implements _FetchEvent {
  const _$_FetchEvent({this.code});

  @override
  final String? code;

  @override
  String toString() {
    return 'StockInfoEvent.fetch(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchEvent &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      __$$_FetchEventCopyWithImpl<_$_FetchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code) fetch,
    required TResult Function() reset,
  }) {
    return fetch(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? code)? fetch,
    TResult? Function()? reset,
  }) {
    return fetch?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code)? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchEvent implements StockInfoEvent {
  const factory _FetchEvent({final String? code}) = _$_FetchEvent;

  String? get code;
  @JsonKey(ignore: true)
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetEventCopyWith<$Res> {
  factory _$$_ResetEventCopyWith(
          _$_ResetEvent value, $Res Function(_$_ResetEvent) then) =
      __$$_ResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetEventCopyWithImpl<$Res>
    extends _$StockInfoEventCopyWithImpl<$Res, _$_ResetEvent>
    implements _$$_ResetEventCopyWith<$Res> {
  __$$_ResetEventCopyWithImpl(
      _$_ResetEvent _value, $Res Function(_$_ResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetEvent implements _ResetEvent {
  const _$_ResetEvent();

  @override
  String toString() {
    return 'StockInfoEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code) fetch,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? code)? fetch,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code)? fetch,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetEvent implements StockInfoEvent {
  const factory _ResetEvent() = _$_ResetEvent;
}

/// @nodoc
mixin _$StockInfoData {
  StockInfoModel? get stock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockInfoDataCopyWith<StockInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockInfoDataCopyWith<$Res> {
  factory $StockInfoDataCopyWith(
          StockInfoData value, $Res Function(StockInfoData) then) =
      _$StockInfoDataCopyWithImpl<$Res, StockInfoData>;
  @useResult
  $Res call({StockInfoModel? stock});
}

/// @nodoc
class _$StockInfoDataCopyWithImpl<$Res, $Val extends StockInfoData>
    implements $StockInfoDataCopyWith<$Res> {
  _$StockInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_value.copyWith(
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as StockInfoModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StockInfoDataCopyWith<$Res>
    implements $StockInfoDataCopyWith<$Res> {
  factory _$$_StockInfoDataCopyWith(
          _$_StockInfoData value, $Res Function(_$_StockInfoData) then) =
      __$$_StockInfoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockInfoModel? stock});
}

/// @nodoc
class __$$_StockInfoDataCopyWithImpl<$Res>
    extends _$StockInfoDataCopyWithImpl<$Res, _$_StockInfoData>
    implements _$$_StockInfoDataCopyWith<$Res> {
  __$$_StockInfoDataCopyWithImpl(
      _$_StockInfoData _value, $Res Function(_$_StockInfoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = freezed,
  }) {
    return _then(_$_StockInfoData(
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as StockInfoModel?,
    ));
  }
}

/// @nodoc

class _$_StockInfoData implements _StockInfoData {
  const _$_StockInfoData({this.stock});

  @override
  final StockInfoModel? stock;

  @override
  String toString() {
    return 'StockInfoData(stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StockInfoData &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StockInfoDataCopyWith<_$_StockInfoData> get copyWith =>
      __$$_StockInfoDataCopyWithImpl<_$_StockInfoData>(this, _$identity);
}

abstract class _StockInfoData implements StockInfoData {
  const factory _StockInfoData({final StockInfoModel? stock}) =
      _$_StockInfoData;

  @override
  StockInfoModel? get stock;
  @override
  @JsonKey(ignore: true)
  _$$_StockInfoDataCopyWith<_$_StockInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StockInfoState {
  StockInfoData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StockInfoData data) init,
    required TResult Function(StockInfoData data) loading,
    required TResult Function(StockInfoData data) success,
    required TResult Function(StockInfoData data, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockInfoData data)? init,
    TResult? Function(StockInfoData data)? loading,
    TResult? Function(StockInfoData data)? success,
    TResult? Function(StockInfoData data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockInfoData data)? init,
    TResult Function(StockInfoData data)? loading,
    TResult Function(StockInfoData data)? success,
    TResult Function(StockInfoData data, String errorMessage)? error,
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
  $StockInfoStateCopyWith<StockInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockInfoStateCopyWith<$Res> {
  factory $StockInfoStateCopyWith(
          StockInfoState value, $Res Function(StockInfoState) then) =
      _$StockInfoStateCopyWithImpl<$Res, StockInfoState>;
  @useResult
  $Res call({StockInfoData data});

  $StockInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StockInfoStateCopyWithImpl<$Res, $Val extends StockInfoState>
    implements $StockInfoStateCopyWith<$Res> {
  _$StockInfoStateCopyWithImpl(this._value, this._then);

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
              as StockInfoData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockInfoDataCopyWith<$Res> get data {
    return $StockInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res>
    implements $StockInfoStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockInfoData data});

  @override
  $StockInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$StockInfoStateCopyWithImpl<$Res, _$_InitState>
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
              as StockInfoData,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final StockInfoData data;

  @override
  String toString() {
    return 'StockInfoState.init(data: $data)';
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
    required TResult Function(StockInfoData data) init,
    required TResult Function(StockInfoData data) loading,
    required TResult Function(StockInfoData data) success,
    required TResult Function(StockInfoData data, String errorMessage) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockInfoData data)? init,
    TResult? Function(StockInfoData data)? loading,
    TResult? Function(StockInfoData data)? success,
    TResult? Function(StockInfoData data, String errorMessage)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockInfoData data)? init,
    TResult Function(StockInfoData data)? loading,
    TResult Function(StockInfoData data)? success,
    TResult Function(StockInfoData data, String errorMessage)? error,
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

abstract class _InitState implements StockInfoState {
  const factory _InitState(final StockInfoData data) = _$_InitState;

  @override
  StockInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $StockInfoStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockInfoData data});

  @override
  $StockInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$StockInfoStateCopyWithImpl<$Res, _$_LoadingState>
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
              as StockInfoData,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState(this.data);

  @override
  final StockInfoData data;

  @override
  String toString() {
    return 'StockInfoState.loading(data: $data)';
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
    required TResult Function(StockInfoData data) init,
    required TResult Function(StockInfoData data) loading,
    required TResult Function(StockInfoData data) success,
    required TResult Function(StockInfoData data, String errorMessage) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockInfoData data)? init,
    TResult? Function(StockInfoData data)? loading,
    TResult? Function(StockInfoData data)? success,
    TResult? Function(StockInfoData data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockInfoData data)? init,
    TResult Function(StockInfoData data)? loading,
    TResult Function(StockInfoData data)? success,
    TResult Function(StockInfoData data, String errorMessage)? error,
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

abstract class _LoadingState implements StockInfoState {
  const factory _LoadingState(final StockInfoData data) = _$_LoadingState;

  @override
  StockInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $StockInfoStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockInfoData data});

  @override
  $StockInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$StockInfoStateCopyWithImpl<$Res, _$_SuccessState>
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
              as StockInfoData,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.data);

  @override
  final StockInfoData data;

  @override
  String toString() {
    return 'StockInfoState.success(data: $data)';
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
    required TResult Function(StockInfoData data) init,
    required TResult Function(StockInfoData data) loading,
    required TResult Function(StockInfoData data) success,
    required TResult Function(StockInfoData data, String errorMessage) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockInfoData data)? init,
    TResult? Function(StockInfoData data)? loading,
    TResult? Function(StockInfoData data)? success,
    TResult? Function(StockInfoData data, String errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockInfoData data)? init,
    TResult Function(StockInfoData data)? loading,
    TResult Function(StockInfoData data)? success,
    TResult Function(StockInfoData data, String errorMessage)? error,
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

abstract class _SuccessState implements StockInfoState {
  const factory _SuccessState(final StockInfoData data) = _$_SuccessState;

  @override
  StockInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $StockInfoStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockInfoData data, String errorMessage});

  @override
  $StockInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$StockInfoStateCopyWithImpl<$Res, _$_ErrorState>
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
              as StockInfoData,
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
  final StockInfoData data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'StockInfoState.error(data: $data, errorMessage: $errorMessage)';
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
    required TResult Function(StockInfoData data) init,
    required TResult Function(StockInfoData data) loading,
    required TResult Function(StockInfoData data) success,
    required TResult Function(StockInfoData data, String errorMessage) error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StockInfoData data)? init,
    TResult? Function(StockInfoData data)? loading,
    TResult? Function(StockInfoData data)? success,
    TResult? Function(StockInfoData data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StockInfoData data)? init,
    TResult Function(StockInfoData data)? loading,
    TResult Function(StockInfoData data)? success,
    TResult Function(StockInfoData data, String errorMessage)? error,
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

abstract class _ErrorState implements StockInfoState {
  const factory _ErrorState(final StockInfoData data,
      {required final String errorMessage}) = _$_ErrorState;

  @override
  StockInfoData get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
