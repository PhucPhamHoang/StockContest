part of 'contest_asset_bloc.dart';

@freezed
class ContestAssetData with _$ContestAssetData {
  const factory ContestAssetData({
    PortfolioOverviewModel? contestAsset,
  }) = _ContestAssetData;
}

@freezed
class ContestAssetState with _$ContestAssetState {
  const factory ContestAssetState.init(ContestAssetData data) = _InitState;
  const factory ContestAssetState.loading(ContestAssetData data) =
      _LoadingState;
  const factory ContestAssetState.success(ContestAssetData data) =
      _SuccessState;
  const factory ContestAssetState.error(ContestAssetData data,
      {required String errorMessage}) = _ErrorState;
}
