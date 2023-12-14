part of 'stock_order_bloc.dart';

@freezed
class StockOrderState with _$StockOrderState {
  const factory StockOrderState.init() = _InitState;
  const factory StockOrderState.loading() = _LoadingState;
  const factory StockOrderState.success() = _SuccessState;
  const factory StockOrderState.error({required String errorMessage}) =
      _ErrorState;
}
