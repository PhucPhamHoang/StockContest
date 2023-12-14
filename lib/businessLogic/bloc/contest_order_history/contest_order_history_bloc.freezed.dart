// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contest_order_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContestOrderHistoryEvent {
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
  $ContestOrderHistoryEventCopyWith<ContestOrderHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestOrderHistoryEventCopyWith<$Res> {
  factory $ContestOrderHistoryEventCopyWith(ContestOrderHistoryEvent value,
          $Res Function(ContestOrderHistoryEvent) then) =
      _$ContestOrderHistoryEventCopyWithImpl<$Res, ContestOrderHistoryEvent>;
  @useResult
  $Res call({String? userid});
}

/// @nodoc
class _$ContestOrderHistoryEventCopyWithImpl<$Res,
        $Val extends ContestOrderHistoryEvent>
    implements $ContestOrderHistoryEventCopyWith<$Res> {
  _$ContestOrderHistoryEventCopyWithImpl(this._value, this._then);

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
    implements $ContestOrderHistoryEventCopyWith<$Res> {
  factory _$$_FetchEventCopyWith(
          _$_FetchEvent value, $Res Function(_$_FetchEvent) then) =
      __$$_FetchEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userid});
}

/// @nodoc
class __$$_FetchEventCopyWithImpl<$Res>
    extends _$ContestOrderHistoryEventCopyWithImpl<$Res, _$_FetchEvent>
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
    return 'ContestOrderHistoryEvent.fetch(userid: $userid)';
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

abstract class _FetchEvent implements ContestOrderHistoryEvent {
  const factory _FetchEvent({final String? userid}) = _$_FetchEvent;

  @override
  String? get userid;
  @override
  @JsonKey(ignore: true)
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestOrderHistoryData {
  List<ExchangeOrderModel> get contestOrderHistories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestOrderHistoryDataCopyWith<ContestOrderHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestOrderHistoryDataCopyWith<$Res> {
  factory $ContestOrderHistoryDataCopyWith(ContestOrderHistoryData value,
          $Res Function(ContestOrderHistoryData) then) =
      _$ContestOrderHistoryDataCopyWithImpl<$Res, ContestOrderHistoryData>;
  @useResult
  $Res call({List<ExchangeOrderModel> contestOrderHistories});
}

/// @nodoc
class _$ContestOrderHistoryDataCopyWithImpl<$Res,
        $Val extends ContestOrderHistoryData>
    implements $ContestOrderHistoryDataCopyWith<$Res> {
  _$ContestOrderHistoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contestOrderHistories = null,
  }) {
    return _then(_value.copyWith(
      contestOrderHistories: null == contestOrderHistories
          ? _value.contestOrderHistories
          : contestOrderHistories // ignore: cast_nullable_to_non_nullable
              as List<ExchangeOrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContestOrderHistoryDataCopyWith<$Res>
    implements $ContestOrderHistoryDataCopyWith<$Res> {
  factory _$$_ContestOrderHistoryDataCopyWith(_$_ContestOrderHistoryData value,
          $Res Function(_$_ContestOrderHistoryData) then) =
      __$$_ContestOrderHistoryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExchangeOrderModel> contestOrderHistories});
}

/// @nodoc
class __$$_ContestOrderHistoryDataCopyWithImpl<$Res>
    extends _$ContestOrderHistoryDataCopyWithImpl<$Res,
        _$_ContestOrderHistoryData>
    implements _$$_ContestOrderHistoryDataCopyWith<$Res> {
  __$$_ContestOrderHistoryDataCopyWithImpl(_$_ContestOrderHistoryData _value,
      $Res Function(_$_ContestOrderHistoryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contestOrderHistories = null,
  }) {
    return _then(_$_ContestOrderHistoryData(
      contestOrderHistories: null == contestOrderHistories
          ? _value._contestOrderHistories
          : contestOrderHistories // ignore: cast_nullable_to_non_nullable
              as List<ExchangeOrderModel>,
    ));
  }
}

/// @nodoc

class _$_ContestOrderHistoryData implements _ContestOrderHistoryData {
  const _$_ContestOrderHistoryData(
      {final List<ExchangeOrderModel> contestOrderHistories = const []})
      : _contestOrderHistories = contestOrderHistories;

  final List<ExchangeOrderModel> _contestOrderHistories;
  @override
  @JsonKey()
  List<ExchangeOrderModel> get contestOrderHistories {
    if (_contestOrderHistories is EqualUnmodifiableListView)
      return _contestOrderHistories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contestOrderHistories);
  }

  @override
  String toString() {
    return 'ContestOrderHistoryData(contestOrderHistories: $contestOrderHistories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContestOrderHistoryData &&
            const DeepCollectionEquality()
                .equals(other._contestOrderHistories, _contestOrderHistories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_contestOrderHistories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContestOrderHistoryDataCopyWith<_$_ContestOrderHistoryData>
      get copyWith =>
          __$$_ContestOrderHistoryDataCopyWithImpl<_$_ContestOrderHistoryData>(
              this, _$identity);
}

abstract class _ContestOrderHistoryData implements ContestOrderHistoryData {
  const factory _ContestOrderHistoryData(
          {final List<ExchangeOrderModel> contestOrderHistories}) =
      _$_ContestOrderHistoryData;

  @override
  List<ExchangeOrderModel> get contestOrderHistories;
  @override
  @JsonKey(ignore: true)
  _$$_ContestOrderHistoryDataCopyWith<_$_ContestOrderHistoryData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestOrderHistoryState {
  ContestOrderHistoryData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestOrderHistoryData data) init,
    required TResult Function(ContestOrderHistoryData data) loading,
    required TResult Function(ContestOrderHistoryData data) success,
    required TResult Function(ContestOrderHistoryData data, String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestOrderHistoryData data)? init,
    TResult? Function(ContestOrderHistoryData data)? loading,
    TResult? Function(ContestOrderHistoryData data)? success,
    TResult? Function(ContestOrderHistoryData data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestOrderHistoryData data)? init,
    TResult Function(ContestOrderHistoryData data)? loading,
    TResult Function(ContestOrderHistoryData data)? success,
    TResult Function(ContestOrderHistoryData data, String errorMessage)? error,
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
  $ContestOrderHistoryStateCopyWith<ContestOrderHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestOrderHistoryStateCopyWith<$Res> {
  factory $ContestOrderHistoryStateCopyWith(ContestOrderHistoryState value,
          $Res Function(ContestOrderHistoryState) then) =
      _$ContestOrderHistoryStateCopyWithImpl<$Res, ContestOrderHistoryState>;
  @useResult
  $Res call({ContestOrderHistoryData data});

  $ContestOrderHistoryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ContestOrderHistoryStateCopyWithImpl<$Res,
        $Val extends ContestOrderHistoryState>
    implements $ContestOrderHistoryStateCopyWith<$Res> {
  _$ContestOrderHistoryStateCopyWithImpl(this._value, this._then);

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
              as ContestOrderHistoryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContestOrderHistoryDataCopyWith<$Res> get data {
    return $ContestOrderHistoryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res>
    implements $ContestOrderHistoryStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestOrderHistoryData data});

  @override
  $ContestOrderHistoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$ContestOrderHistoryStateCopyWithImpl<$Res, _$_InitState>
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
              as ContestOrderHistoryData,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final ContestOrderHistoryData data;

  @override
  String toString() {
    return 'ContestOrderHistoryState.init(data: $data)';
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
    required TResult Function(ContestOrderHistoryData data) init,
    required TResult Function(ContestOrderHistoryData data) loading,
    required TResult Function(ContestOrderHistoryData data) success,
    required TResult Function(ContestOrderHistoryData data, String errorMessage)
        error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestOrderHistoryData data)? init,
    TResult? Function(ContestOrderHistoryData data)? loading,
    TResult? Function(ContestOrderHistoryData data)? success,
    TResult? Function(ContestOrderHistoryData data, String errorMessage)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestOrderHistoryData data)? init,
    TResult Function(ContestOrderHistoryData data)? loading,
    TResult Function(ContestOrderHistoryData data)? success,
    TResult Function(ContestOrderHistoryData data, String errorMessage)? error,
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

abstract class _InitState implements ContestOrderHistoryState {
  const factory _InitState(final ContestOrderHistoryData data) = _$_InitState;

  @override
  ContestOrderHistoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $ContestOrderHistoryStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestOrderHistoryData data});

  @override
  $ContestOrderHistoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ContestOrderHistoryStateCopyWithImpl<$Res, _$_LoadingState>
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
              as ContestOrderHistoryData,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState(this.data);

  @override
  final ContestOrderHistoryData data;

  @override
  String toString() {
    return 'ContestOrderHistoryState.loading(data: $data)';
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
    required TResult Function(ContestOrderHistoryData data) init,
    required TResult Function(ContestOrderHistoryData data) loading,
    required TResult Function(ContestOrderHistoryData data) success,
    required TResult Function(ContestOrderHistoryData data, String errorMessage)
        error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestOrderHistoryData data)? init,
    TResult? Function(ContestOrderHistoryData data)? loading,
    TResult? Function(ContestOrderHistoryData data)? success,
    TResult? Function(ContestOrderHistoryData data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestOrderHistoryData data)? init,
    TResult Function(ContestOrderHistoryData data)? loading,
    TResult Function(ContestOrderHistoryData data)? success,
    TResult Function(ContestOrderHistoryData data, String errorMessage)? error,
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

abstract class _LoadingState implements ContestOrderHistoryState {
  const factory _LoadingState(final ContestOrderHistoryData data) =
      _$_LoadingState;

  @override
  ContestOrderHistoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $ContestOrderHistoryStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestOrderHistoryData data});

  @override
  $ContestOrderHistoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$ContestOrderHistoryStateCopyWithImpl<$Res, _$_SuccessState>
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
              as ContestOrderHistoryData,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.data);

  @override
  final ContestOrderHistoryData data;

  @override
  String toString() {
    return 'ContestOrderHistoryState.success(data: $data)';
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
    required TResult Function(ContestOrderHistoryData data) init,
    required TResult Function(ContestOrderHistoryData data) loading,
    required TResult Function(ContestOrderHistoryData data) success,
    required TResult Function(ContestOrderHistoryData data, String errorMessage)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestOrderHistoryData data)? init,
    TResult? Function(ContestOrderHistoryData data)? loading,
    TResult? Function(ContestOrderHistoryData data)? success,
    TResult? Function(ContestOrderHistoryData data, String errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestOrderHistoryData data)? init,
    TResult Function(ContestOrderHistoryData data)? loading,
    TResult Function(ContestOrderHistoryData data)? success,
    TResult Function(ContestOrderHistoryData data, String errorMessage)? error,
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

abstract class _SuccessState implements ContestOrderHistoryState {
  const factory _SuccessState(final ContestOrderHistoryData data) =
      _$_SuccessState;

  @override
  ContestOrderHistoryData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $ContestOrderHistoryStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestOrderHistoryData data, String errorMessage});

  @override
  $ContestOrderHistoryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ContestOrderHistoryStateCopyWithImpl<$Res, _$_ErrorState>
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
              as ContestOrderHistoryData,
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
  final ContestOrderHistoryData data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContestOrderHistoryState.error(data: $data, errorMessage: $errorMessage)';
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
    required TResult Function(ContestOrderHistoryData data) init,
    required TResult Function(ContestOrderHistoryData data) loading,
    required TResult Function(ContestOrderHistoryData data) success,
    required TResult Function(ContestOrderHistoryData data, String errorMessage)
        error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestOrderHistoryData data)? init,
    TResult? Function(ContestOrderHistoryData data)? loading,
    TResult? Function(ContestOrderHistoryData data)? success,
    TResult? Function(ContestOrderHistoryData data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestOrderHistoryData data)? init,
    TResult Function(ContestOrderHistoryData data)? loading,
    TResult Function(ContestOrderHistoryData data)? success,
    TResult Function(ContestOrderHistoryData data, String errorMessage)? error,
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

abstract class _ErrorState implements ContestOrderHistoryState {
  const factory _ErrorState(final ContestOrderHistoryData data,
      {required final String errorMessage}) = _$_ErrorState;

  @override
  ContestOrderHistoryData get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
