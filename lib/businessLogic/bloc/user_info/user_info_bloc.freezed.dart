// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserInfoDto data) change,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserInfoDto data)? change,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserInfoDto data)? change,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_ChangeEvent value) change,
    required TResult Function(_ResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_ChangeEvent value)? change,
    TResult? Function(_ResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_ChangeEvent value)? change,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoEventCopyWith<$Res> {
  factory $UserInfoEventCopyWith(
          UserInfoEvent value, $Res Function(UserInfoEvent) then) =
      _$UserInfoEventCopyWithImpl<$Res, UserInfoEvent>;
}

/// @nodoc
class _$UserInfoEventCopyWithImpl<$Res, $Val extends UserInfoEvent>
    implements $UserInfoEventCopyWith<$Res> {
  _$UserInfoEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_FetchEventCopyWithImpl<$Res>
    extends _$UserInfoEventCopyWithImpl<$Res, _$_FetchEvent>
    implements _$$_FetchEventCopyWith<$Res> {
  __$$_FetchEventCopyWithImpl(
      _$_FetchEvent _value, $Res Function(_$_FetchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchEvent implements _FetchEvent {
  const _$_FetchEvent();

  @override
  String toString() {
    return 'UserInfoEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserInfoDto data) change,
    required TResult Function() reset,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserInfoDto data)? change,
    TResult? Function()? reset,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserInfoDto data)? change,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_ChangeEvent value) change,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_ChangeEvent value)? change,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_ChangeEvent value)? change,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchEvent implements UserInfoEvent {
  const factory _FetchEvent() = _$_FetchEvent;
}

/// @nodoc
abstract class _$$_ChangeEventCopyWith<$Res> {
  factory _$$_ChangeEventCopyWith(
          _$_ChangeEvent value, $Res Function(_$_ChangeEvent) then) =
      __$$_ChangeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoDto data});
}

/// @nodoc
class __$$_ChangeEventCopyWithImpl<$Res>
    extends _$UserInfoEventCopyWithImpl<$Res, _$_ChangeEvent>
    implements _$$_ChangeEventCopyWith<$Res> {
  __$$_ChangeEventCopyWithImpl(
      _$_ChangeEvent _value, $Res Function(_$_ChangeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangeEvent(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserInfoDto,
    ));
  }
}

/// @nodoc

class _$_ChangeEvent implements _ChangeEvent {
  const _$_ChangeEvent({required this.data});

  @override
  final UserInfoDto data;

  @override
  String toString() {
    return 'UserInfoEvent.change(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeEvent &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeEventCopyWith<_$_ChangeEvent> get copyWith =>
      __$$_ChangeEventCopyWithImpl<_$_ChangeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(UserInfoDto data) change,
    required TResult Function() reset,
  }) {
    return change(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserInfoDto data)? change,
    TResult? Function()? reset,
  }) {
    return change?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserInfoDto data)? change,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_ChangeEvent value) change,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_ChangeEvent value)? change,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_ChangeEvent value)? change,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _ChangeEvent implements UserInfoEvent {
  const factory _ChangeEvent({required final UserInfoDto data}) =
      _$_ChangeEvent;

  UserInfoDto get data;
  @JsonKey(ignore: true)
  _$$_ChangeEventCopyWith<_$_ChangeEvent> get copyWith =>
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
    extends _$UserInfoEventCopyWithImpl<$Res, _$_ResetEvent>
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
    return 'UserInfoEvent.reset()';
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
    required TResult Function() fetch,
    required TResult Function(UserInfoDto data) change,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(UserInfoDto data)? change,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(UserInfoDto data)? change,
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
    required TResult Function(_ChangeEvent value) change,
    required TResult Function(_ResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_ChangeEvent value)? change,
    TResult? Function(_ResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_ChangeEvent value)? change,
    TResult Function(_ResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetEvent implements UserInfoEvent {
  const factory _ResetEvent() = _$_ResetEvent;
}

/// @nodoc
mixin _$UserInfoData {
  UserInfoModel? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoDataCopyWith<UserInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDataCopyWith<$Res> {
  factory $UserInfoDataCopyWith(
          UserInfoData value, $Res Function(UserInfoData) then) =
      _$UserInfoDataCopyWithImpl<$Res, UserInfoData>;
  @useResult
  $Res call({UserInfoModel? data});
}

/// @nodoc
class _$UserInfoDataCopyWithImpl<$Res, $Val extends UserInfoData>
    implements $UserInfoDataCopyWith<$Res> {
  _$UserInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserInfoModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInfoDataCopyWith<$Res>
    implements $UserInfoDataCopyWith<$Res> {
  factory _$$_UserInfoDataCopyWith(
          _$_UserInfoData value, $Res Function(_$_UserInfoData) then) =
      __$$_UserInfoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfoModel? data});
}

/// @nodoc
class __$$_UserInfoDataCopyWithImpl<$Res>
    extends _$UserInfoDataCopyWithImpl<$Res, _$_UserInfoData>
    implements _$$_UserInfoDataCopyWith<$Res> {
  __$$_UserInfoDataCopyWithImpl(
      _$_UserInfoData _value, $Res Function(_$_UserInfoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UserInfoData(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserInfoModel?,
    ));
  }
}

/// @nodoc

class _$_UserInfoData implements _UserInfoData {
  const _$_UserInfoData({this.data});

  @override
  final UserInfoModel? data;

  @override
  String toString() {
    return 'UserInfoData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoData &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoDataCopyWith<_$_UserInfoData> get copyWith =>
      __$$_UserInfoDataCopyWithImpl<_$_UserInfoData>(this, _$identity);
}

abstract class _UserInfoData implements UserInfoData {
  const factory _UserInfoData({final UserInfoModel? data}) = _$_UserInfoData;

  @override
  UserInfoModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoDataCopyWith<_$_UserInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfoData data) init,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userData) success,
    required TResult Function() changeSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function(String errorMessage) changeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserInfoData data)? init,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userData)? success,
    TResult? Function()? changeSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String errorMessage)? changeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfoData data)? init,
    TResult Function()? loading,
    TResult Function(UserInfoModel userData)? success,
    TResult Function()? changeSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function(String errorMessage)? changeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ChangeSuccessState value) changeSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ChangeErrorState value) changeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ChangeSuccessState value)? changeSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_ChangeErrorState value)? changeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ChangeSuccessState value)? changeSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ChangeErrorState value)? changeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res, UserInfoState>;
}

/// @nodoc
class _$UserInfoStateCopyWithImpl<$Res, $Val extends UserInfoState>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoData data});

  $UserInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_InitState>
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
              as UserInfoData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoDataCopyWith<$Res> get data {
    return $UserInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final UserInfoData data;

  @override
  String toString() {
    return 'UserInfoState.init(data: $data)';
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
    required TResult Function(UserInfoData data) init,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userData) success,
    required TResult Function() changeSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function(String errorMessage) changeError,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserInfoData data)? init,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userData)? success,
    TResult? Function()? changeSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String errorMessage)? changeError,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfoData data)? init,
    TResult Function()? loading,
    TResult Function(UserInfoModel userData)? success,
    TResult Function()? changeSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function(String errorMessage)? changeError,
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
    required TResult Function(_ChangeSuccessState value) changeSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ChangeErrorState value) changeError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ChangeSuccessState value)? changeSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_ChangeErrorState value)? changeError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ChangeSuccessState value)? changeSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ChangeErrorState value)? changeError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitState implements UserInfoState {
  const factory _InitState(final UserInfoData data) = _$_InitState;

  UserInfoData get data;
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'UserInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfoData data) init,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userData) success,
    required TResult Function() changeSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function(String errorMessage) changeError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserInfoData data)? init,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userData)? success,
    TResult? Function()? changeSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String errorMessage)? changeError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfoData data)? init,
    TResult Function()? loading,
    TResult Function(UserInfoModel userData)? success,
    TResult Function()? changeSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function(String errorMessage)? changeError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ChangeSuccessState value) changeSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ChangeErrorState value) changeError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ChangeSuccessState value)? changeSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_ChangeErrorState value)? changeError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ChangeSuccessState value)? changeSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ChangeErrorState value)? changeError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements UserInfoState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserInfoModel userData});
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$_SuccessState(
      null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserInfoModel,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.userData);

  @override
  final UserInfoModel userData;

  @override
  String toString() {
    return 'UserInfoState.success(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessState &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      __$$_SuccessStateCopyWithImpl<_$_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfoData data) init,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userData) success,
    required TResult Function() changeSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function(String errorMessage) changeError,
  }) {
    return success(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserInfoData data)? init,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userData)? success,
    TResult? Function()? changeSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String errorMessage)? changeError,
  }) {
    return success?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfoData data)? init,
    TResult Function()? loading,
    TResult Function(UserInfoModel userData)? success,
    TResult Function()? changeSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function(String errorMessage)? changeError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ChangeSuccessState value) changeSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ChangeErrorState value) changeError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ChangeSuccessState value)? changeSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_ChangeErrorState value)? changeError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ChangeSuccessState value)? changeSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ChangeErrorState value)? changeError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements UserInfoState {
  const factory _SuccessState(final UserInfoModel userData) = _$_SuccessState;

  UserInfoModel get userData;
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSuccessStateCopyWith<$Res> {
  factory _$$_ChangeSuccessStateCopyWith(_$_ChangeSuccessState value,
          $Res Function(_$_ChangeSuccessState) then) =
      __$$_ChangeSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeSuccessStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_ChangeSuccessState>
    implements _$$_ChangeSuccessStateCopyWith<$Res> {
  __$$_ChangeSuccessStateCopyWithImpl(
      _$_ChangeSuccessState _value, $Res Function(_$_ChangeSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangeSuccessState implements _ChangeSuccessState {
  const _$_ChangeSuccessState();

  @override
  String toString() {
    return 'UserInfoState.changeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfoData data) init,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userData) success,
    required TResult Function() changeSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function(String errorMessage) changeError,
  }) {
    return changeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserInfoData data)? init,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userData)? success,
    TResult? Function()? changeSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String errorMessage)? changeError,
  }) {
    return changeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfoData data)? init,
    TResult Function()? loading,
    TResult Function(UserInfoModel userData)? success,
    TResult Function()? changeSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function(String errorMessage)? changeError,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ChangeSuccessState value) changeSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ChangeErrorState value) changeError,
  }) {
    return changeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ChangeSuccessState value)? changeSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_ChangeErrorState value)? changeError,
  }) {
    return changeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ChangeSuccessState value)? changeSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ChangeErrorState value)? changeError,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeSuccessState implements UserInfoState {
  const factory _ChangeSuccessState() = _$_ChangeSuccessState;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_ErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserInfoState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfoData data) init,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userData) success,
    required TResult Function() changeSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function(String errorMessage) changeError,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserInfoData data)? init,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userData)? success,
    TResult? Function()? changeSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String errorMessage)? changeError,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfoData data)? init,
    TResult Function()? loading,
    TResult Function(UserInfoModel userData)? success,
    TResult Function()? changeSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function(String errorMessage)? changeError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ChangeSuccessState value) changeSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ChangeErrorState value) changeError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ChangeSuccessState value)? changeSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_ChangeErrorState value)? changeError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ChangeSuccessState value)? changeSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ChangeErrorState value)? changeError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements UserInfoState {
  const factory _ErrorState({required final String errorMessage}) =
      _$_ErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeErrorStateCopyWith<$Res> {
  factory _$$_ChangeErrorStateCopyWith(
          _$_ChangeErrorState value, $Res Function(_$_ChangeErrorState) then) =
      __$$_ChangeErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ChangeErrorStateCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res, _$_ChangeErrorState>
    implements _$$_ChangeErrorStateCopyWith<$Res> {
  __$$_ChangeErrorStateCopyWithImpl(
      _$_ChangeErrorState _value, $Res Function(_$_ChangeErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_ChangeErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeErrorState implements _ChangeErrorState {
  const _$_ChangeErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserInfoState.changeError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeErrorStateCopyWith<_$_ChangeErrorState> get copyWith =>
      __$$_ChangeErrorStateCopyWithImpl<_$_ChangeErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserInfoData data) init,
    required TResult Function() loading,
    required TResult Function(UserInfoModel userData) success,
    required TResult Function() changeSuccess,
    required TResult Function(String errorMessage) error,
    required TResult Function(String errorMessage) changeError,
  }) {
    return changeError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserInfoData data)? init,
    TResult? Function()? loading,
    TResult? Function(UserInfoModel userData)? success,
    TResult? Function()? changeSuccess,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String errorMessage)? changeError,
  }) {
    return changeError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserInfoData data)? init,
    TResult Function()? loading,
    TResult Function(UserInfoModel userData)? success,
    TResult Function()? changeSuccess,
    TResult Function(String errorMessage)? error,
    TResult Function(String errorMessage)? changeError,
    required TResult orElse(),
  }) {
    if (changeError != null) {
      return changeError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ChangeSuccessState value) changeSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_ChangeErrorState value) changeError,
  }) {
    return changeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ChangeSuccessState value)? changeSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_ChangeErrorState value)? changeError,
  }) {
    return changeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ChangeSuccessState value)? changeSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_ChangeErrorState value)? changeError,
    required TResult orElse(),
  }) {
    if (changeError != null) {
      return changeError(this);
    }
    return orElse();
  }
}

abstract class _ChangeErrorState implements UserInfoState {
  const factory _ChangeErrorState({required final String errorMessage}) =
      _$_ChangeErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ChangeErrorStateCopyWith<_$_ChangeErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
