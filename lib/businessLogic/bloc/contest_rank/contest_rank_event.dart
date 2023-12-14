part of 'contest_rank_bloc.dart';

@freezed
class ContestRankEvent with _$ContestRankEvent {
  const factory ContestRankEvent.fetch({
    String? challengeCodeId,
    int? pageNum,
    int? recordPerPage,
    String? subAccountId,
    bool? isMyRank,
    String? name,
  }) = _FetchEvent;
  const factory ContestRankEvent.filter({required bool isMyRank}) =
      _FilterEvent;
}
