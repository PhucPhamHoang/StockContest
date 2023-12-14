part of 'contest_rank_bloc.dart';

@freezed
class ContestRankData with _$ContestRankData {
  const factory ContestRankData({
    @Default([]) List<ContestRankModel> ranks,
    ContestRankModel? myRank,
    @Default(1) int pageNum,
  }) = _ContestRankData;
}

@freezed
class ContestRankState with _$ContestRankState {
  const factory ContestRankState.init(ContestRankData data) = _InitState;
  const factory ContestRankState.loading(ContestRankData data) = _LoadingState;
  const factory ContestRankState.waiting(ContestRankData data,
      {required bool isMyRank}) = _WaitingState;
  const factory ContestRankState.success(ContestRankData data) = _SuccessState;
  const factory ContestRankState.error(ContestRankData data,
      {required String errorMessage}) = _ErrorState;
}
