part of 'contest_category_bloc.dart';

@freezed
class ContestCategoryData with _$ContestCategoryData {
  const factory ContestCategoryData({
    @Default([]) List<PortfolioStockModel> contestCategory,
    @Default(0) double totalCash,
    @Default(0) double totalRate,
  }) = _ContestCategoryData;
}

@freezed
class ContestCategoryState with _$ContestCategoryState {
  const factory ContestCategoryState.init(ContestCategoryData data) =
      _InitState;
  const factory ContestCategoryState.loading(ContestCategoryData data) =
      _LoadingState;
  const factory ContestCategoryState.success(ContestCategoryData data) =
      _SuccessState;
  const factory ContestCategoryState.error(ContestCategoryData data,
      {required String errorMessage}) = _ErrorState;
}
