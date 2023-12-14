part of 'contest_bloc.dart';

@freezed
class ContestData with _$ContestData {
  const factory ContestData({
    @Default([]) List<ContestModel> listContest,
    @Default(1) int pageNum,
  }) = _Data;
}

@freezed
class ContestState with _$ContestState {
  const factory ContestState.init(ContestData data) = _InitState;
  const factory ContestState.loading(ContestData data) = _LoadingState;
  const factory ContestState.waiting(ContestData data) = _WaitingState;
  const factory ContestState.success(ContestData data) = _SuccessState;
  const factory ContestState.error(ContestData data,
      {required String errorMessage}) = _ErrorState;
}
