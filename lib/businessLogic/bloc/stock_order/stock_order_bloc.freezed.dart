// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StockOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        buy,
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        sell,
    required TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)
        cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult? Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyEvent value) buy,
    required TResult Function(_SellEvent value) sell,
    required TResult Function(_CancelEvent value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyEvent value)? buy,
    TResult? Function(_SellEvent value)? sell,
    TResult? Function(_CancelEvent value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyEvent value)? buy,
    TResult Function(_SellEvent value)? sell,
    TResult Function(_CancelEvent value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockOrderEventCopyWith<$Res> {
  factory $StockOrderEventCopyWith(
          StockOrderEvent value, $Res Function(StockOrderEvent) then) =
      _$StockOrderEventCopyWithImpl<$Res, StockOrderEvent>;
}

/// @nodoc
class _$StockOrderEventCopyWithImpl<$Res, $Val extends StockOrderEvent>
    implements $StockOrderEventCopyWith<$Res> {
  _$StockOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BuyEventCopyWith<$Res> {
  factory _$$_BuyEventCopyWith(
          _$_BuyEvent value, $Res Function(_$_BuyEvent) then) =
      __$$_BuyEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String code,
      OrderStockEnum type,
      double amount,
      double? price,
      OrderContestTypeEnum typeOrder,
      String symbol});
}

/// @nodoc
class __$$_BuyEventCopyWithImpl<$Res>
    extends _$StockOrderEventCopyWithImpl<$Res, _$_BuyEvent>
    implements _$$_BuyEventCopyWith<$Res> {
  __$$_BuyEventCopyWithImpl(
      _$_BuyEvent _value, $Res Function(_$_BuyEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
    Object? amount = null,
    Object? price = freezed,
    Object? typeOrder = null,
    Object? symbol = null,
  }) {
    return _then(_$_BuyEvent(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderStockEnum,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      typeOrder: null == typeOrder
          ? _value.typeOrder
          : typeOrder // ignore: cast_nullable_to_non_nullable
              as OrderContestTypeEnum,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BuyEvent implements _BuyEvent {
  const _$_BuyEvent(
      {required this.code,
      required this.type,
      required this.amount,
      required this.price,
      required this.typeOrder,
      required this.symbol});

  @override
  final String code;
  @override
  final OrderStockEnum type;
  @override
  final double amount;
  @override
  final double? price;
  @override
  final OrderContestTypeEnum typeOrder;
  @override
  final String symbol;

  @override
  String toString() {
    return 'StockOrderEvent.buy(code: $code, type: $type, amount: $amount, price: $price, typeOrder: $typeOrder, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyEvent &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.typeOrder, typeOrder) ||
                other.typeOrder == typeOrder) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, type, amount, price, typeOrder, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyEventCopyWith<_$_BuyEvent> get copyWith =>
      __$$_BuyEventCopyWithImpl<_$_BuyEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        buy,
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        sell,
    required TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)
        cancel,
  }) {
    return buy(code, type, amount, price, typeOrder, symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult? Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
  }) {
    return buy?.call(code, type, amount, price, typeOrder, symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
    required TResult orElse(),
  }) {
    if (buy != null) {
      return buy(code, type, amount, price, typeOrder, symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyEvent value) buy,
    required TResult Function(_SellEvent value) sell,
    required TResult Function(_CancelEvent value) cancel,
  }) {
    return buy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyEvent value)? buy,
    TResult? Function(_SellEvent value)? sell,
    TResult? Function(_CancelEvent value)? cancel,
  }) {
    return buy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyEvent value)? buy,
    TResult Function(_SellEvent value)? sell,
    TResult Function(_CancelEvent value)? cancel,
    required TResult orElse(),
  }) {
    if (buy != null) {
      return buy(this);
    }
    return orElse();
  }
}

abstract class _BuyEvent implements StockOrderEvent {
  const factory _BuyEvent(
      {required final String code,
      required final OrderStockEnum type,
      required final double amount,
      required final double? price,
      required final OrderContestTypeEnum typeOrder,
      required final String symbol}) = _$_BuyEvent;

  String get code;
  OrderStockEnum get type;
  double get amount;
  double? get price;
  OrderContestTypeEnum get typeOrder;
  String get symbol;
  @JsonKey(ignore: true)
  _$$_BuyEventCopyWith<_$_BuyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SellEventCopyWith<$Res> {
  factory _$$_SellEventCopyWith(
          _$_SellEvent value, $Res Function(_$_SellEvent) then) =
      __$$_SellEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String code,
      OrderStockEnum type,
      double amount,
      double? price,
      OrderContestTypeEnum typeOrder,
      String symbol});
}

/// @nodoc
class __$$_SellEventCopyWithImpl<$Res>
    extends _$StockOrderEventCopyWithImpl<$Res, _$_SellEvent>
    implements _$$_SellEventCopyWith<$Res> {
  __$$_SellEventCopyWithImpl(
      _$_SellEvent _value, $Res Function(_$_SellEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
    Object? amount = null,
    Object? price = freezed,
    Object? typeOrder = null,
    Object? symbol = null,
  }) {
    return _then(_$_SellEvent(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OrderStockEnum,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      typeOrder: null == typeOrder
          ? _value.typeOrder
          : typeOrder // ignore: cast_nullable_to_non_nullable
              as OrderContestTypeEnum,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SellEvent implements _SellEvent {
  const _$_SellEvent(
      {required this.code,
      required this.type,
      required this.amount,
      required this.price,
      required this.typeOrder,
      required this.symbol});

  @override
  final String code;
  @override
  final OrderStockEnum type;
  @override
  final double amount;
  @override
  final double? price;
  @override
  final OrderContestTypeEnum typeOrder;
  @override
  final String symbol;

  @override
  String toString() {
    return 'StockOrderEvent.sell(code: $code, type: $type, amount: $amount, price: $price, typeOrder: $typeOrder, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellEvent &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.typeOrder, typeOrder) ||
                other.typeOrder == typeOrder) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, type, amount, price, typeOrder, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SellEventCopyWith<_$_SellEvent> get copyWith =>
      __$$_SellEventCopyWithImpl<_$_SellEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        buy,
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        sell,
    required TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)
        cancel,
  }) {
    return sell(code, type, amount, price, typeOrder, symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult? Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
  }) {
    return sell?.call(code, type, amount, price, typeOrder, symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
    required TResult orElse(),
  }) {
    if (sell != null) {
      return sell(code, type, amount, price, typeOrder, symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyEvent value) buy,
    required TResult Function(_SellEvent value) sell,
    required TResult Function(_CancelEvent value) cancel,
  }) {
    return sell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyEvent value)? buy,
    TResult? Function(_SellEvent value)? sell,
    TResult? Function(_CancelEvent value)? cancel,
  }) {
    return sell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyEvent value)? buy,
    TResult Function(_SellEvent value)? sell,
    TResult Function(_CancelEvent value)? cancel,
    required TResult orElse(),
  }) {
    if (sell != null) {
      return sell(this);
    }
    return orElse();
  }
}

abstract class _SellEvent implements StockOrderEvent {
  const factory _SellEvent(
      {required final String code,
      required final OrderStockEnum type,
      required final double amount,
      required final double? price,
      required final OrderContestTypeEnum typeOrder,
      required final String symbol}) = _$_SellEvent;

  String get code;
  OrderStockEnum get type;
  double get amount;
  double? get price;
  OrderContestTypeEnum get typeOrder;
  String get symbol;
  @JsonKey(ignore: true)
  _$$_SellEventCopyWith<_$_SellEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelEventCopyWith<$Res> {
  factory _$$_CancelEventCopyWith(
          _$_CancelEvent value, $Res Function(_$_CancelEvent) then) =
      __$$_CancelEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String ticketCode, String stockSymbol, String exchangeOrderId});
}

/// @nodoc
class __$$_CancelEventCopyWithImpl<$Res>
    extends _$StockOrderEventCopyWithImpl<$Res, _$_CancelEvent>
    implements _$$_CancelEventCopyWith<$Res> {
  __$$_CancelEventCopyWithImpl(
      _$_CancelEvent _value, $Res Function(_$_CancelEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketCode = null,
    Object? stockSymbol = null,
    Object? exchangeOrderId = null,
  }) {
    return _then(_$_CancelEvent(
      ticketCode: null == ticketCode
          ? _value.ticketCode
          : ticketCode // ignore: cast_nullable_to_non_nullable
              as String,
      stockSymbol: null == stockSymbol
          ? _value.stockSymbol
          : stockSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeOrderId: null == exchangeOrderId
          ? _value.exchangeOrderId
          : exchangeOrderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CancelEvent implements _CancelEvent {
  const _$_CancelEvent(
      {required this.ticketCode,
      required this.stockSymbol,
      required this.exchangeOrderId});

  @override
  final String ticketCode;
  @override
  final String stockSymbol;
  @override
  final String exchangeOrderId;

  @override
  String toString() {
    return 'StockOrderEvent.cancel(ticketCode: $ticketCode, stockSymbol: $stockSymbol, exchangeOrderId: $exchangeOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelEvent &&
            (identical(other.ticketCode, ticketCode) ||
                other.ticketCode == ticketCode) &&
            (identical(other.stockSymbol, stockSymbol) ||
                other.stockSymbol == stockSymbol) &&
            (identical(other.exchangeOrderId, exchangeOrderId) ||
                other.exchangeOrderId == exchangeOrderId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, ticketCode, stockSymbol, exchangeOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelEventCopyWith<_$_CancelEvent> get copyWith =>
      __$$_CancelEventCopyWithImpl<_$_CancelEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        buy,
    required TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)
        sell,
    required TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)
        cancel,
  }) {
    return cancel(ticketCode, stockSymbol, exchangeOrderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult? Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult? Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
  }) {
    return cancel?.call(ticketCode, stockSymbol, exchangeOrderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        buy,
    TResult Function(String code, OrderStockEnum type, double amount,
            double? price, OrderContestTypeEnum typeOrder, String symbol)?
        sell,
    TResult Function(
            String ticketCode, String stockSymbol, String exchangeOrderId)?
        cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(ticketCode, stockSymbol, exchangeOrderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BuyEvent value) buy,
    required TResult Function(_SellEvent value) sell,
    required TResult Function(_CancelEvent value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BuyEvent value)? buy,
    TResult? Function(_SellEvent value)? sell,
    TResult? Function(_CancelEvent value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BuyEvent value)? buy,
    TResult Function(_SellEvent value)? sell,
    TResult Function(_CancelEvent value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _CancelEvent implements StockOrderEvent {
  const factory _CancelEvent(
      {required final String ticketCode,
      required final String stockSymbol,
      required final String exchangeOrderId}) = _$_CancelEvent;

  String get ticketCode;
  String get stockSymbol;
  String get exchangeOrderId;
  @JsonKey(ignore: true)
  _$$_CancelEventCopyWith<_$_CancelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StockOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
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
}

/// @nodoc
abstract class $StockOrderStateCopyWith<$Res> {
  factory $StockOrderStateCopyWith(
          StockOrderState value, $Res Function(StockOrderState) then) =
      _$StockOrderStateCopyWithImpl<$Res, StockOrderState>;
}

/// @nodoc
class _$StockOrderStateCopyWithImpl<$Res, $Val extends StockOrderState>
    implements $StockOrderStateCopyWith<$Res> {
  _$StockOrderStateCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_InitStateCopyWithImpl<$Res>
    extends _$StockOrderStateCopyWithImpl<$Res, _$_InitState>
    implements _$$_InitStateCopyWith<$Res> {
  __$$_InitStateCopyWithImpl(
      _$_InitState _value, $Res Function(_$_InitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitState implements _InitState {
  const _$_InitState();

  @override
  String toString() {
    return 'StockOrderState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
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

abstract class _InitState implements StockOrderState {
  const factory _InitState() = _$_InitState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$StockOrderStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'StockOrderState.loading()';
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
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
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

abstract class _LoadingState implements StockOrderState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$StockOrderStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState();

  @override
  String toString() {
    return 'StockOrderState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
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

abstract class _SuccessState implements StockOrderState {
  const factory _SuccessState() = _$_SuccessState;
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
    extends _$StockOrderStateCopyWithImpl<$Res, _$_ErrorState>
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
    return 'StockOrderState.error(errorMessage: $errorMessage)';
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
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
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

abstract class _ErrorState implements StockOrderState {
  const factory _ErrorState({required final String errorMessage}) =
      _$_ErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
