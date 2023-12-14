part of 'stock_info_bloc.dart';

@freezed
class StockInfoData with _$StockInfoData {
  const factory StockInfoData({
    StockInfoModel? stock,
  }) = _StockInfoData;
}

@freezed
class StockInfoState with _$StockInfoState {
  const factory StockInfoState.init(StockInfoData data) = _InitState;
  const factory StockInfoState.loading(StockInfoData data) = _LoadingState;
  const factory StockInfoState.success(StockInfoData data) = _SuccessState;
  const factory StockInfoState.error(StockInfoData data,
      {required String errorMessage}) = _ErrorState;
}
