part of 'contest_order_bloc.dart';

@freezed
class ContestOrderData with _$ContestOrderData {
  const factory ContestOrderData({
    @Default([]) List<ExchangeOrderModel> contestOrders,
  }) = _ContestOrderData;
}

@freezed
class ContestOrderState with _$ContestOrderState {
  const factory ContestOrderState.init(ContestOrderData data) = _InitState;
  const factory ContestOrderState.loading(ContestOrderData data) =
      _LoadingState;
  const factory ContestOrderState.success(ContestOrderData data) =
      _SuccessState;
  const factory ContestOrderState.error(ContestOrderData data,
      {required String errorMessage}) = _ErrorState;
}
