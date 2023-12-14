import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
import 'package:untitled/data/model/ContestRankModel.dart';
import 'package:untitled/data/repository/ContestRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';
part 'contest_rank_event.dart';
part 'contest_rank_state.dart';
part 'contest_rank_bloc.freezed.dart';

class ContestRankBloc extends Bloc<ContestRankEvent, ContestRankState> {
  final ContestRepository _contestRepository;

  ContestRankBloc(this._contestRepository)
      : super(const _InitState(ContestRankData())) {
    on<_FetchEvent>((event, emit) async {
      try {
        emit(_LoadingState(state.data));
        int pageNum = state.data.pageNum;
        print("pagenumne ${pageNum}");
        List<ContestRankModel> listRanks = state.data.ranks;
        if (event.challengeCodeId?.isNotEmpty == true) {
          List<ContestRankModel> ranks = [];
          ContestRankModel? myRank ;
          if (event.isMyRank == true) {
            myRank = await _contestRepository.getMyRanks(
              pageNum: event.pageNum,
              challengeCode: event.challengeCodeId??"",
              subAccountID: event.subAccountId
            );
          } else {
            ranks = await _contestRepository.getRanks(
              pageNum: event.pageNum,
              challengeCode: event.challengeCodeId??"",
              name: event.name
            );
          }
          if (ranks.isNotEmpty) {
            pageNum = event.pageNum ?? 1;
          }
          if (pageNum == 1 && event.pageNum == 1) {
            listRanks = [];
          }

          ranks = _removeDuplicates([...listRanks, ...ranks]);
          emit(
            _SuccessState(
              state.data.copyWith(ranks: ranks, pageNum: pageNum,myRank: myRank),
            ),
          );
        } else {
          emit(
            _SuccessState(
              state.data.copyWith(ranks: []),
            ),
          );
        }
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });
    on<_FilterEvent>((event, emit) async {
      emit(_WaitingState(state.data, isMyRank: event.isMyRank));
    });
  }

  List<ContestRankModel> _removeDuplicates(List<ContestRankModel> list) {
    Set<String> seen = {};
    List<ContestRankModel> uniqueList =
        list.where((element) => seen.add(element.subAccountId)).toList();

    return uniqueList;
  }
}
