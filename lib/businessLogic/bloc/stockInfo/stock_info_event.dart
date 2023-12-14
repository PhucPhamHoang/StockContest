part of 'stock_info_bloc.dart';

@freezed
class StockInfoEvent with _$StockInfoEvent {
  const factory StockInfoEvent.fetch({
    String? code,
  }) = _FetchEvent;
  const factory StockInfoEvent.reset() = _ResetEvent;
}
