// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contest_account_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContestAccountInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
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
}

/// @nodoc
abstract class $ContestAccountInfoEventCopyWith<$Res> {
  factory $ContestAccountInfoEventCopyWith(ContestAccountInfoEvent value,
          $Res Function(ContestAccountInfoEvent) then) =
      _$ContestAccountInfoEventCopyWithImpl<$Res, ContestAccountInfoEvent>;
}

/// @nodoc
class _$ContestAccountInfoEventCopyWithImpl<$Res,
        $Val extends ContestAccountInfoEvent>
    implements $ContestAccountInfoEventCopyWith<$Res> {
  _$ContestAccountInfoEventCopyWithImpl(this._value, this._then);

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
    extends _$ContestAccountInfoEventCopyWithImpl<$Res, _$_FetchEvent>
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
    return 'ContestAccountInfoEvent.fetch()';
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
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
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

abstract class _FetchEvent implements ContestAccountInfoEvent {
  const factory _FetchEvent() = _$_FetchEvent;
}

/// @nodoc
mixin _$ContestAccountInfoData {
  List<ContestAccountInfoModel>? get listData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestAccountInfoDataCopyWith<ContestAccountInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestAccountInfoDataCopyWith<$Res> {
  factory $ContestAccountInfoDataCopyWith(ContestAccountInfoData value,
          $Res Function(ContestAccountInfoData) then) =
      _$ContestAccountInfoDataCopyWithImpl<$Res, ContestAccountInfoData>;
  @useResult
  $Res call({List<ContestAccountInfoModel>? listData});
}

/// @nodoc
class _$ContestAccountInfoDataCopyWithImpl<$Res,
        $Val extends ContestAccountInfoData>
    implements $ContestAccountInfoDataCopyWith<$Res> {
  _$ContestAccountInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listData = freezed,
  }) {
    return _then(_value.copyWith(
      listData: freezed == listData
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<ContestAccountInfoModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContestAccountInfoDataCopyWith<$Res>
    implements $ContestAccountInfoDataCopyWith<$Res> {
  factory _$$_ContestAccountInfoDataCopyWith(_$_ContestAccountInfoData value,
          $Res Function(_$_ContestAccountInfoData) then) =
      __$$_ContestAccountInfoDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContestAccountInfoModel>? listData});
}

/// @nodoc
class __$$_ContestAccountInfoDataCopyWithImpl<$Res>
    extends _$ContestAccountInfoDataCopyWithImpl<$Res,
        _$_ContestAccountInfoData>
    implements _$$_ContestAccountInfoDataCopyWith<$Res> {
  __$$_ContestAccountInfoDataCopyWithImpl(_$_ContestAccountInfoData _value,
      $Res Function(_$_ContestAccountInfoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listData = freezed,
  }) {
    return _then(_$_ContestAccountInfoData(
      listData: freezed == listData
          ? _value._listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<ContestAccountInfoModel>?,
    ));
  }
}

/// @nodoc

class _$_ContestAccountInfoData implements _ContestAccountInfoData {
  const _$_ContestAccountInfoData(
      {final List<ContestAccountInfoModel>? listData})
      : _listData = listData;

  final List<ContestAccountInfoModel>? _listData;
  @override
  List<ContestAccountInfoModel>? get listData {
    final value = _listData;
    if (value == null) return null;
    if (_listData is EqualUnmodifiableListView) return _listData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContestAccountInfoData(listData: $listData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContestAccountInfoData &&
            const DeepCollectionEquality().equals(other._listData, _listData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContestAccountInfoDataCopyWith<_$_ContestAccountInfoData> get copyWith =>
      __$$_ContestAccountInfoDataCopyWithImpl<_$_ContestAccountInfoData>(
          this, _$identity);
}

abstract class _ContestAccountInfoData implements ContestAccountInfoData {
  const factory _ContestAccountInfoData(
          {final List<ContestAccountInfoModel>? listData}) =
      _$_ContestAccountInfoData;

  @override
  List<ContestAccountInfoModel>? get listData;
  @override
  @JsonKey(ignore: true)
  _$$_ContestAccountInfoDataCopyWith<_$_ContestAccountInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestAccountInfoState {
  ContestAccountInfoData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestAccountInfoData data) init,
    required TResult Function(ContestAccountInfoData data) loading,
    required TResult Function(ContestAccountInfoData data) success,
    required TResult Function(ContestAccountInfoData data, String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestAccountInfoData data)? init,
    TResult? Function(ContestAccountInfoData data)? loading,
    TResult? Function(ContestAccountInfoData data)? success,
    TResult? Function(ContestAccountInfoData data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestAccountInfoData data)? init,
    TResult Function(ContestAccountInfoData data)? loading,
    TResult Function(ContestAccountInfoData data)? success,
    TResult Function(ContestAccountInfoData data, String errorMessage)? error,
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
  $ContestAccountInfoStateCopyWith<ContestAccountInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestAccountInfoStateCopyWith<$Res> {
  factory $ContestAccountInfoStateCopyWith(ContestAccountInfoState value,
          $Res Function(ContestAccountInfoState) then) =
      _$ContestAccountInfoStateCopyWithImpl<$Res, ContestAccountInfoState>;
  @useResult
  $Res call({ContestAccountInfoData data});

  $ContestAccountInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ContestAccountInfoStateCopyWithImpl<$Res,
        $Val extends ContestAccountInfoState>
    implements $ContestAccountInfoStateCopyWith<$Res> {
  _$ContestAccountInfoStateCopyWithImpl(this._value, this._then);

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
              as ContestAccountInfoData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContestAccountInfoDataCopyWith<$Res> get data {
    return $ContestAccountInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res>
    implements $ContestAccountInfoStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestAccountInfoData data});

  @override
  $ContestAccountInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$ContestAccountInfoStateCopyWithImpl<$Res, _$_InitState>
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
              as ContestAccountInfoData,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final ContestAccountInfoData data;

  @override
  String toString() {
    return 'ContestAccountInfoState.init(data: $data)';
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
    required TResult Function(ContestAccountInfoData data) init,
    required TResult Function(ContestAccountInfoData data) loading,
    required TResult Function(ContestAccountInfoData data) success,
    required TResult Function(ContestAccountInfoData data, String errorMessage)
        error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestAccountInfoData data)? init,
    TResult? Function(ContestAccountInfoData data)? loading,
    TResult? Function(ContestAccountInfoData data)? success,
    TResult? Function(ContestAccountInfoData data, String errorMessage)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestAccountInfoData data)? init,
    TResult Function(ContestAccountInfoData data)? loading,
    TResult Function(ContestAccountInfoData data)? success,
    TResult Function(ContestAccountInfoData data, String errorMessage)? error,
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

abstract class _InitState implements ContestAccountInfoState {
  const factory _InitState(final ContestAccountInfoData data) = _$_InitState;

  @override
  ContestAccountInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $ContestAccountInfoStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestAccountInfoData data});

  @override
  $ContestAccountInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ContestAccountInfoStateCopyWithImpl<$Res, _$_LoadingState>
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
              as ContestAccountInfoData,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState(this.data);

  @override
  final ContestAccountInfoData data;

  @override
  String toString() {
    return 'ContestAccountInfoState.loading(data: $data)';
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
    required TResult Function(ContestAccountInfoData data) init,
    required TResult Function(ContestAccountInfoData data) loading,
    required TResult Function(ContestAccountInfoData data) success,
    required TResult Function(ContestAccountInfoData data, String errorMessage)
        error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestAccountInfoData data)? init,
    TResult? Function(ContestAccountInfoData data)? loading,
    TResult? Function(ContestAccountInfoData data)? success,
    TResult? Function(ContestAccountInfoData data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestAccountInfoData data)? init,
    TResult Function(ContestAccountInfoData data)? loading,
    TResult Function(ContestAccountInfoData data)? success,
    TResult Function(ContestAccountInfoData data, String errorMessage)? error,
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

abstract class _LoadingState implements ContestAccountInfoState {
  const factory _LoadingState(final ContestAccountInfoData data) =
      _$_LoadingState;

  @override
  ContestAccountInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $ContestAccountInfoStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestAccountInfoData data});

  @override
  $ContestAccountInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$ContestAccountInfoStateCopyWithImpl<$Res, _$_SuccessState>
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
              as ContestAccountInfoData,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.data);

  @override
  final ContestAccountInfoData data;

  @override
  String toString() {
    return 'ContestAccountInfoState.success(data: $data)';
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
    required TResult Function(ContestAccountInfoData data) init,
    required TResult Function(ContestAccountInfoData data) loading,
    required TResult Function(ContestAccountInfoData data) success,
    required TResult Function(ContestAccountInfoData data, String errorMessage)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestAccountInfoData data)? init,
    TResult? Function(ContestAccountInfoData data)? loading,
    TResult? Function(ContestAccountInfoData data)? success,
    TResult? Function(ContestAccountInfoData data, String errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestAccountInfoData data)? init,
    TResult Function(ContestAccountInfoData data)? loading,
    TResult Function(ContestAccountInfoData data)? success,
    TResult Function(ContestAccountInfoData data, String errorMessage)? error,
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

abstract class _SuccessState implements ContestAccountInfoState {
  const factory _SuccessState(final ContestAccountInfoData data) =
      _$_SuccessState;

  @override
  ContestAccountInfoData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $ContestAccountInfoStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestAccountInfoData data, String errorMessage});

  @override
  $ContestAccountInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ContestAccountInfoStateCopyWithImpl<$Res, _$_ErrorState>
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
              as ContestAccountInfoData,
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
  final ContestAccountInfoData data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContestAccountInfoState.error(data: $data, errorMessage: $errorMessage)';
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
    required TResult Function(ContestAccountInfoData data) init,
    required TResult Function(ContestAccountInfoData data) loading,
    required TResult Function(ContestAccountInfoData data) success,
    required TResult Function(ContestAccountInfoData data, String errorMessage)
        error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestAccountInfoData data)? init,
    TResult? Function(ContestAccountInfoData data)? loading,
    TResult? Function(ContestAccountInfoData data)? success,
    TResult? Function(ContestAccountInfoData data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestAccountInfoData data)? init,
    TResult Function(ContestAccountInfoData data)? loading,
    TResult Function(ContestAccountInfoData data)? success,
    TResult Function(ContestAccountInfoData data, String errorMessage)? error,
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

abstract class _ErrorState implements ContestAccountInfoState {
  const factory _ErrorState(final ContestAccountInfoData data,
      {required final String errorMessage}) = _$_ErrorState;

  @override
  ContestAccountInfoData get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
