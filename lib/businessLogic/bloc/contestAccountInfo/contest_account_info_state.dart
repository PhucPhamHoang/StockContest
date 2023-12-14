part of 'contest_account_info_bloc.dart';

@freezed
class ContestAccountInfoData with _$ContestAccountInfoData {
  const factory ContestAccountInfoData({
    List<ContestAccountInfoModel>? listData,
  }) = _ContestAccountInfoData;
}

@freezed
class ContestAccountInfoState with _$ContestAccountInfoState {
  const factory ContestAccountInfoState.init(ContestAccountInfoData data) = _InitState;
  const factory ContestAccountInfoState.loading(ContestAccountInfoData data) = _LoadingState;
  const factory ContestAccountInfoState.success(ContestAccountInfoData data) = _SuccessState;
  const factory ContestAccountInfoState.error(ContestAccountInfoData data, {required String errorMessage}) = _ErrorState;
}
