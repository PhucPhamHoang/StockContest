part of 'stock_order_bloc.dart';

@freezed
class StockOrderEvent with _$StockOrderEvent {
  const factory StockOrderEvent.buy({
    required String code,
    required OrderStockEnum type,
    required double amount,
    required double? price,
    required OrderContestTypeEnum typeOrder,
    required String symbol,
  }) = _BuyEvent;
  const factory StockOrderEvent.sell({
    required String code,
    required OrderStockEnum type,
    required double amount,
    required double? price,
    required OrderContestTypeEnum typeOrder,
    required String symbol,
  }) = _SellEvent;
  const factory StockOrderEvent.cancel({
    required String ticketCode,
    required String stockSymbol,
    required String exchangeOrderId,
  }) = _CancelEvent;
}
