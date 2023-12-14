part of 'contest_order_history_bloc.dart';

@freezed
class ContestOrderHistoryData with _$ContestOrderHistoryData {
  const factory ContestOrderHistoryData({
    @Default([]) List<ExchangeOrderModel> contestOrderHistories,
  }) = _ContestOrderHistoryData;
}

@freezed
class ContestOrderHistoryState with _$ContestOrderHistoryState {
  const factory ContestOrderHistoryState.init(ContestOrderHistoryData data) =
      _InitState;
  const factory ContestOrderHistoryState.loading(ContestOrderHistoryData data) =
      _LoadingState;
  const factory ContestOrderHistoryState.success(ContestOrderHistoryData data) =
      _SuccessState;
  const factory ContestOrderHistoryState.error(ContestOrderHistoryData data,
      {required String errorMessage}) = _ErrorState;
}
