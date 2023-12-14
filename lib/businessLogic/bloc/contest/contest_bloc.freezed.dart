// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contest_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)
        fetch,
    required TResult Function() filter,
    required TResult Function(String code) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult? Function()? filter,
    TResult? Function(String code)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult Function()? filter,
    TResult Function(String code)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_FilterEvent value)? filter,
    TResult? Function(_UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestEventCopyWith<$Res> {
  factory $ContestEventCopyWith(
          ContestEvent value, $Res Function(ContestEvent) then) =
      _$ContestEventCopyWithImpl<$Res, ContestEvent>;
}

/// @nodoc
class _$ContestEventCopyWithImpl<$Res, $Val extends ContestEvent>
    implements $ContestEventCopyWith<$Res> {
  _$ContestEventCopyWithImpl(this._value, this._then);

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
  $Res call(
      {int pageEnum,
      String? name,
      List<AttendStatusEnum>? listAttend,
      List<RegisteredStatusEnum>? listRegister,
      List<TransactionStatusEnum>? listTransaction,
      String? sortPrize,
      String? sortParticipant,
      int? recordPerPage,
      bool? isPublished,
      ContestModeEnum type});
}

/// @nodoc
class __$$_FetchEventCopyWithImpl<$Res>
    extends _$ContestEventCopyWithImpl<$Res, _$_FetchEvent>
    implements _$$_FetchEventCopyWith<$Res> {
  __$$_FetchEventCopyWithImpl(
      _$_FetchEvent _value, $Res Function(_$_FetchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageEnum = null,
    Object? name = freezed,
    Object? listAttend = freezed,
    Object? listRegister = freezed,
    Object? listTransaction = freezed,
    Object? sortPrize = freezed,
    Object? sortParticipant = freezed,
    Object? recordPerPage = freezed,
    Object? isPublished = freezed,
    Object? type = null,
  }) {
    return _then(_$_FetchEvent(
      pageEnum: null == pageEnum
          ? _value.pageEnum
          : pageEnum // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      listAttend: freezed == listAttend
          ? _value._listAttend
          : listAttend // ignore: cast_nullable_to_non_nullable
              as List<AttendStatusEnum>?,
      listRegister: freezed == listRegister
          ? _value._listRegister
          : listRegister // ignore: cast_nullable_to_non_nullable
              as List<RegisteredStatusEnum>?,
      listTransaction: freezed == listTransaction
          ? _value._listTransaction
          : listTransaction // ignore: cast_nullable_to_non_nullable
              as List<TransactionStatusEnum>?,
      sortPrize: freezed == sortPrize
          ? _value.sortPrize
          : sortPrize // ignore: cast_nullable_to_non_nullable
              as String?,
      sortParticipant: freezed == sortParticipant
          ? _value.sortParticipant
          : sortParticipant // ignore: cast_nullable_to_non_nullable
              as String?,
      recordPerPage: freezed == recordPerPage
          ? _value.recordPerPage
          : recordPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContestModeEnum,
    ));
  }
}

/// @nodoc

class _$_FetchEvent implements _FetchEvent {
  const _$_FetchEvent(
      {required this.pageEnum,
      this.name,
      final List<AttendStatusEnum>? listAttend,
      final List<RegisteredStatusEnum>? listRegister,
      final List<TransactionStatusEnum>? listTransaction,
      this.sortPrize,
      this.sortParticipant,
      this.recordPerPage,
      this.isPublished,
      this.type = ContestModeEnum.all})
      : _listAttend = listAttend,
        _listRegister = listRegister,
        _listTransaction = listTransaction;

  @override
  final int pageEnum;
  @override
  final String? name;
  final List<AttendStatusEnum>? _listAttend;
  @override
  List<AttendStatusEnum>? get listAttend {
    final value = _listAttend;
    if (value == null) return null;
    if (_listAttend is EqualUnmodifiableListView) return _listAttend;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RegisteredStatusEnum>? _listRegister;
  @override
  List<RegisteredStatusEnum>? get listRegister {
    final value = _listRegister;
    if (value == null) return null;
    if (_listRegister is EqualUnmodifiableListView) return _listRegister;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TransactionStatusEnum>? _listTransaction;
  @override
  List<TransactionStatusEnum>? get listTransaction {
    final value = _listTransaction;
    if (value == null) return null;
    if (_listTransaction is EqualUnmodifiableListView) return _listTransaction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? sortPrize;
  @override
  final String? sortParticipant;
  @override
  final int? recordPerPage;
  @override
  final bool? isPublished;
  @override
  @JsonKey()
  final ContestModeEnum type;

  @override
  String toString() {
    return 'ContestEvent.fetch(pageEnum: $pageEnum, name: $name, listAttend: $listAttend, listRegister: $listRegister, listTransaction: $listTransaction, sortPrize: $sortPrize, sortParticipant: $sortParticipant, recordPerPage: $recordPerPage, isPublished: $isPublished, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchEvent &&
            (identical(other.pageEnum, pageEnum) ||
                other.pageEnum == pageEnum) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._listAttend, _listAttend) &&
            const DeepCollectionEquality()
                .equals(other._listRegister, _listRegister) &&
            const DeepCollectionEquality()
                .equals(other._listTransaction, _listTransaction) &&
            (identical(other.sortPrize, sortPrize) ||
                other.sortPrize == sortPrize) &&
            (identical(other.sortParticipant, sortParticipant) ||
                other.sortParticipant == sortParticipant) &&
            (identical(other.recordPerPage, recordPerPage) ||
                other.recordPerPage == recordPerPage) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageEnum,
      name,
      const DeepCollectionEquality().hash(_listAttend),
      const DeepCollectionEquality().hash(_listRegister),
      const DeepCollectionEquality().hash(_listTransaction),
      sortPrize,
      sortParticipant,
      recordPerPage,
      isPublished,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      __$$_FetchEventCopyWithImpl<_$_FetchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)
        fetch,
    required TResult Function() filter,
    required TResult Function(String code) update,
  }) {
    return fetch(pageEnum, name, listAttend, listRegister, listTransaction,
        sortPrize, sortParticipant, recordPerPage, isPublished, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult? Function()? filter,
    TResult? Function(String code)? update,
  }) {
    return fetch?.call(
        pageEnum,
        name,
        listAttend,
        listRegister,
        listTransaction,
        sortPrize,
        sortParticipant,
        recordPerPage,
        isPublished,
        type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult Function()? filter,
    TResult Function(String code)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(pageEnum, name, listAttend, listRegister, listTransaction,
          sortPrize, sortParticipant, recordPerPage, isPublished, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_FilterEvent value)? filter,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchEvent implements ContestEvent {
  const factory _FetchEvent(
      {required final int pageEnum,
      final String? name,
      final List<AttendStatusEnum>? listAttend,
      final List<RegisteredStatusEnum>? listRegister,
      final List<TransactionStatusEnum>? listTransaction,
      final String? sortPrize,
      final String? sortParticipant,
      final int? recordPerPage,
      final bool? isPublished,
      final ContestModeEnum type}) = _$_FetchEvent;

  int get pageEnum;
  String? get name;
  List<AttendStatusEnum>? get listAttend;
  List<RegisteredStatusEnum>? get listRegister;
  List<TransactionStatusEnum>? get listTransaction;
  String? get sortPrize;
  String? get sortParticipant;
  int? get recordPerPage;
  bool? get isPublished;
  ContestModeEnum get type;
  @JsonKey(ignore: true)
  _$$_FetchEventCopyWith<_$_FetchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterEventCopyWith<$Res> {
  factory _$$_FilterEventCopyWith(
          _$_FilterEvent value, $Res Function(_$_FilterEvent) then) =
      __$$_FilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FilterEventCopyWithImpl<$Res>
    extends _$ContestEventCopyWithImpl<$Res, _$_FilterEvent>
    implements _$$_FilterEventCopyWith<$Res> {
  __$$_FilterEventCopyWithImpl(
      _$_FilterEvent _value, $Res Function(_$_FilterEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FilterEvent implements _FilterEvent {
  const _$_FilterEvent();

  @override
  String toString() {
    return 'ContestEvent.filter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FilterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)
        fetch,
    required TResult Function() filter,
    required TResult Function(String code) update,
  }) {
    return filter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult? Function()? filter,
    TResult? Function(String code)? update,
  }) {
    return filter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult Function()? filter,
    TResult Function(String code)? update,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_FilterEvent value)? filter,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _FilterEvent implements ContestEvent {
  const factory _FilterEvent() = _$_FilterEvent;
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$ContestEventCopyWithImpl<$Res, _$_UpdateEvent>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_UpdateEvent(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateEvent implements _UpdateEvent {
  const _$_UpdateEvent({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'ContestEvent.update(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEvent &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      __$$_UpdateEventCopyWithImpl<_$_UpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)
        fetch,
    required TResult Function() filter,
    required TResult Function(String code) update,
  }) {
    return update(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult? Function()? filter,
    TResult? Function(String code)? update,
  }) {
    return update?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int pageEnum,
            String? name,
            List<AttendStatusEnum>? listAttend,
            List<RegisteredStatusEnum>? listRegister,
            List<TransactionStatusEnum>? listTransaction,
            String? sortPrize,
            String? sortParticipant,
            int? recordPerPage,
            bool? isPublished,
            ContestModeEnum type)?
        fetch,
    TResult Function()? filter,
    TResult Function(String code)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEvent value) fetch,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEvent value)? fetch,
    TResult? Function(_FilterEvent value)? filter,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEvent value)? fetch,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements ContestEvent {
  const factory _UpdateEvent({required final String code}) = _$_UpdateEvent;

  String get code;
  @JsonKey(ignore: true)
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestData {
  List<ContestModel> get listContest => throw _privateConstructorUsedError;
  int get pageNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestDataCopyWith<ContestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestDataCopyWith<$Res> {
  factory $ContestDataCopyWith(
          ContestData value, $Res Function(ContestData) then) =
      _$ContestDataCopyWithImpl<$Res, ContestData>;
  @useResult
  $Res call({List<ContestModel> listContest, int pageNum});
}

/// @nodoc
class _$ContestDataCopyWithImpl<$Res, $Val extends ContestData>
    implements $ContestDataCopyWith<$Res> {
  _$ContestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listContest = null,
    Object? pageNum = null,
  }) {
    return _then(_value.copyWith(
      listContest: null == listContest
          ? _value.listContest
          : listContest // ignore: cast_nullable_to_non_nullable
              as List<ContestModel>,
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $ContestDataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContestModel> listContest, int pageNum});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$ContestDataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listContest = null,
    Object? pageNum = null,
  }) {
    return _then(_$_Data(
      listContest: null == listContest
          ? _value._listContest
          : listContest // ignore: cast_nullable_to_non_nullable
              as List<ContestModel>,
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(
      {final List<ContestModel> listContest = const [], this.pageNum = 1})
      : _listContest = listContest;

  final List<ContestModel> _listContest;
  @override
  @JsonKey()
  List<ContestModel> get listContest {
    if (_listContest is EqualUnmodifiableListView) return _listContest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listContest);
  }

  @override
  @JsonKey()
  final int pageNum;

  @override
  String toString() {
    return 'ContestData(listContest: $listContest, pageNum: $pageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality()
                .equals(other._listContest, _listContest) &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listContest), pageNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);
}

abstract class _Data implements ContestData {
  const factory _Data(
      {final List<ContestModel> listContest, final int pageNum}) = _$_Data;

  @override
  List<ContestModel> get listContest;
  @override
  int get pageNum;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContestState {
  ContestData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestData data) init,
    required TResult Function(ContestData data) loading,
    required TResult Function(ContestData data) waiting,
    required TResult Function(ContestData data) success,
    required TResult Function(ContestData data, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestData data)? init,
    TResult? Function(ContestData data)? loading,
    TResult? Function(ContestData data)? waiting,
    TResult? Function(ContestData data)? success,
    TResult? Function(ContestData data, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestData data)? init,
    TResult Function(ContestData data)? loading,
    TResult Function(ContestData data)? waiting,
    TResult Function(ContestData data)? success,
    TResult Function(ContestData data, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContestStateCopyWith<ContestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContestStateCopyWith<$Res> {
  factory $ContestStateCopyWith(
          ContestState value, $Res Function(ContestState) then) =
      _$ContestStateCopyWithImpl<$Res, ContestState>;
  @useResult
  $Res call({ContestData data});

  $ContestDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ContestStateCopyWithImpl<$Res, $Val extends ContestState>
    implements $ContestStateCopyWith<$Res> {
  _$ContestStateCopyWithImpl(this._value, this._then);

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
              as ContestData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContestDataCopyWith<$Res> get data {
    return $ContestDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitStateCopyWith<$Res>
    implements $ContestStateCopyWith<$Res> {
  factory _$$_InitStateCopyWith(
          _$_InitState value, $Res Function(_$_InitState) then) =
      __$$_InitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestData data});

  @override
  $ContestDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$ContestStateCopyWithImpl<$Res, _$_InitState>
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
              as ContestData,
    ));
  }
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState(this.data);

  @override
  final ContestData data;

  @override
  String toString() {
    return 'ContestState.init(data: $data)';
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
    required TResult Function(ContestData data) init,
    required TResult Function(ContestData data) loading,
    required TResult Function(ContestData data) waiting,
    required TResult Function(ContestData data) success,
    required TResult Function(ContestData data, String errorMessage) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestData data)? init,
    TResult? Function(ContestData data)? loading,
    TResult? Function(ContestData data)? waiting,
    TResult? Function(ContestData data)? success,
    TResult? Function(ContestData data, String errorMessage)? error,
  }) {
    return init?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestData data)? init,
    TResult Function(ContestData data)? loading,
    TResult Function(ContestData data)? waiting,
    TResult Function(ContestData data)? success,
    TResult Function(ContestData data, String errorMessage)? error,
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
    required TResult Function(_WaitingState value) waiting,
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
    TResult? Function(_WaitingState value)? waiting,
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
    TResult Function(_WaitingState value)? waiting,
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

abstract class _InitState implements ContestState {
  const factory _InitState(final ContestData data) = _$_InitState;

  @override
  ContestData get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitStateCopyWith<_$_InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res>
    implements $ContestStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestData data});

  @override
  $ContestDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ContestStateCopyWithImpl<$Res, _$_LoadingState>
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
              as ContestData,
    ));
  }
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState(this.data);

  @override
  final ContestData data;

  @override
  String toString() {
    return 'ContestState.loading(data: $data)';
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
    required TResult Function(ContestData data) init,
    required TResult Function(ContestData data) loading,
    required TResult Function(ContestData data) waiting,
    required TResult Function(ContestData data) success,
    required TResult Function(ContestData data, String errorMessage) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestData data)? init,
    TResult? Function(ContestData data)? loading,
    TResult? Function(ContestData data)? waiting,
    TResult? Function(ContestData data)? success,
    TResult? Function(ContestData data, String errorMessage)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestData data)? init,
    TResult Function(ContestData data)? loading,
    TResult Function(ContestData data)? waiting,
    TResult Function(ContestData data)? success,
    TResult Function(ContestData data, String errorMessage)? error,
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
    required TResult Function(_WaitingState value) waiting,
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
    TResult? Function(_WaitingState value)? waiting,
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
    TResult Function(_WaitingState value)? waiting,
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

abstract class _LoadingState implements ContestState {
  const factory _LoadingState(final ContestData data) = _$_LoadingState;

  @override
  ContestData get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingStateCopyWith<_$_LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WaitingStateCopyWith<$Res>
    implements $ContestStateCopyWith<$Res> {
  factory _$$_WaitingStateCopyWith(
          _$_WaitingState value, $Res Function(_$_WaitingState) then) =
      __$$_WaitingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestData data});

  @override
  $ContestDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_WaitingStateCopyWithImpl<$Res>
    extends _$ContestStateCopyWithImpl<$Res, _$_WaitingState>
    implements _$$_WaitingStateCopyWith<$Res> {
  __$$_WaitingStateCopyWithImpl(
      _$_WaitingState _value, $Res Function(_$_WaitingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_WaitingState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContestData,
    ));
  }
}

/// @nodoc

class _$_WaitingState implements _WaitingState {
  const _$_WaitingState(this.data);

  @override
  final ContestData data;

  @override
  String toString() {
    return 'ContestState.waiting(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WaitingState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaitingStateCopyWith<_$_WaitingState> get copyWith =>
      __$$_WaitingStateCopyWithImpl<_$_WaitingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContestData data) init,
    required TResult Function(ContestData data) loading,
    required TResult Function(ContestData data) waiting,
    required TResult Function(ContestData data) success,
    required TResult Function(ContestData data, String errorMessage) error,
  }) {
    return waiting(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestData data)? init,
    TResult? Function(ContestData data)? loading,
    TResult? Function(ContestData data)? waiting,
    TResult? Function(ContestData data)? success,
    TResult? Function(ContestData data, String errorMessage)? error,
  }) {
    return waiting?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestData data)? init,
    TResult Function(ContestData data)? loading,
    TResult Function(ContestData data)? waiting,
    TResult Function(ContestData data)? success,
    TResult Function(ContestData data, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitState value) init,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_WaitingState value) waiting,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitState value)? init,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_WaitingState value)? waiting,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitState value)? init,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_WaitingState value)? waiting,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _WaitingState implements ContestState {
  const factory _WaitingState(final ContestData data) = _$_WaitingState;

  @override
  ContestData get data;
  @override
  @JsonKey(ignore: true)
  _$$_WaitingStateCopyWith<_$_WaitingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res>
    implements $ContestStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestData data});

  @override
  $ContestDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$ContestStateCopyWithImpl<$Res, _$_SuccessState>
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
              as ContestData,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(this.data);

  @override
  final ContestData data;

  @override
  String toString() {
    return 'ContestState.success(data: $data)';
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
    required TResult Function(ContestData data) init,
    required TResult Function(ContestData data) loading,
    required TResult Function(ContestData data) waiting,
    required TResult Function(ContestData data) success,
    required TResult Function(ContestData data, String errorMessage) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestData data)? init,
    TResult? Function(ContestData data)? loading,
    TResult? Function(ContestData data)? waiting,
    TResult? Function(ContestData data)? success,
    TResult? Function(ContestData data, String errorMessage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestData data)? init,
    TResult Function(ContestData data)? loading,
    TResult Function(ContestData data)? waiting,
    TResult Function(ContestData data)? success,
    TResult Function(ContestData data, String errorMessage)? error,
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
    required TResult Function(_WaitingState value) waiting,
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
    TResult? Function(_WaitingState value)? waiting,
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
    TResult Function(_WaitingState value)? waiting,
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

abstract class _SuccessState implements ContestState {
  const factory _SuccessState(final ContestData data) = _$_SuccessState;

  @override
  ContestData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res>
    implements $ContestStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContestData data, String errorMessage});

  @override
  $ContestDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ContestStateCopyWithImpl<$Res, _$_ErrorState>
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
              as ContestData,
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
  final ContestData data;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContestState.error(data: $data, errorMessage: $errorMessage)';
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
    required TResult Function(ContestData data) init,
    required TResult Function(ContestData data) loading,
    required TResult Function(ContestData data) waiting,
    required TResult Function(ContestData data) success,
    required TResult Function(ContestData data, String errorMessage) error,
  }) {
    return error(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContestData data)? init,
    TResult? Function(ContestData data)? loading,
    TResult? Function(ContestData data)? waiting,
    TResult? Function(ContestData data)? success,
    TResult? Function(ContestData data, String errorMessage)? error,
  }) {
    return error?.call(data, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContestData data)? init,
    TResult Function(ContestData data)? loading,
    TResult Function(ContestData data)? waiting,
    TResult Function(ContestData data)? success,
    TResult Function(ContestData data, String errorMessage)? error,
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
    required TResult Function(_WaitingState value) waiting,
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
    TResult? Function(_WaitingState value)? waiting,
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
    TResult Function(_WaitingState value)? waiting,
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

abstract class _ErrorState implements ContestState {
  const factory _ErrorState(final ContestData data,
      {required final String errorMessage}) = _$_ErrorState;

  @override
  ContestData get data;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
