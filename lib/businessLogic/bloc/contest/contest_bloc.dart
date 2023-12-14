import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/ContestModel.dart';
import 'package:untitled/data/repository/ContestRepository.dart';
import 'package:untitled/data/static/enum/ContestFilterEnum.dart';
import 'package:untitled/data/static/enum/ContestModeEnum.dart';
import 'package:untitled/data/static/enum/ContestStatusEnum.dart';
import 'package:untitled/utils/service/DebugService.dart';
part 'contest_event.dart';
part 'contest_state.dart';
part 'contest_bloc.freezed.dart';

class ContestBloc extends Bloc<ContestEvent, ContestState> {
  final ContestRepository _contestRepository;

  // AdviserFullInfoModel? adviserFullInfoModel;
  List<ContestModel> listContest = [];
  ContestModel? currenContest;
  ContestBloc(this._contestRepository) : super(const _InitState(_Data())) {
    on<_FetchEvent>(
        transformer: (eventStream, mapper) => eventStream
            .debounceTime(const Duration(milliseconds: 200))
            .switchMap(mapper), (event, emit) async {
      emit(_LoadingState(state.data));
      try {
        ContestModeEnum type = event.type;
        // fileter type
        var listAttend = event.listAttend;
        AttendStatusEnum? attendStatus;
        if (listAttend != null && listAttend.length == 1) {
          if (listAttend[0] == AttendStatusEnum.attended) {
            type = ContestModeEnum.attended;
          } else {
            attendStatus = AttendStatusEnum.none;
            type = ContestModeEnum.all;
          }
        }

        // filter register status
        List<RegisterStatusEnum> listRegisterStatus = [];
        var listRegister = event.listRegister;
        if (listRegister != null && listRegister.isNotEmpty) {
          for (var status in listRegister) {
            switch (status) {
              case RegisteredStatusEnum.none:
                listRegisterStatus.addAll([
                  RegisterStatusEnum.notOpenRegist,
                ]);
                break;
              case RegisteredStatusEnum.registered:
                listRegisterStatus.addAll([
                  RegisterStatusEnum.openingRegist,
                ]);
                break;
              case RegisteredStatusEnum.closed:
                listRegisterStatus.add(
                  RegisterStatusEnum.endRegist,
                );
                break;
            }
            if (listRegisterStatus.length == 4) {
              listRegisterStatus.add(RegisterStatusEnum.stopRegist);
            }
          }
          listRegisterStatus = RegisterStatusEnum.values
              .toSet()
              .difference(listRegisterStatus.toSet())
              .toList();
        }
        // filter transaction
        List<CompetitionStatusEnum> listTransactionStatus = [];
        var listTransaction = event.listTransaction;
        if (listTransaction != null && listTransaction.isNotEmpty) {
          for (var status in listTransaction) {
            switch (status) {
              case TransactionStatusEnum.none:
                listTransactionStatus.addAll([
                  CompetitionStatusEnum.notOpenTrade,
                ]);
                break;
              case TransactionStatusEnum.transacted:
                listTransactionStatus.addAll([
                  CompetitionStatusEnum.openingTrade,
                ]);
                break;
              case TransactionStatusEnum.closed:
                listTransactionStatus.add(CompetitionStatusEnum.endTrade);
                break;
            }
          }
          if (listTransactionStatus.length == 3) {
            listTransactionStatus.add(CompetitionStatusEnum.stopTrade);
          }
          listTransactionStatus = CompetitionStatusEnum.values
              .toSet()
              .difference(listTransactionStatus.toSet())
              .toList();
        }
        List<ContestModel> contests = [];
        int pageEnum = state.data.pageNum;
        if (type == ContestModeEnum.all) {
          contests = await _contestRepository.findDataList(
            pageNum: event.pageEnum,
            listRegister: listRegisterStatus,
            listTransaction: listTransactionStatus,
            code: event.name,
            recordPerPage: event.recordPerPage,
          );
          // if (attendStatus == AttendStatusEnum.none) {
          //   contests = contests.where((e) => e.mine != true).toList();
          // }
        }
        // if (type == ContestModeEnum.attended) {
        //   contests = await _contestRepository.getMyCompete(
        //     listRegister: listRegisterStatus,
        //     listTransaction: listTransactionStatus,
        //     name: event.name,
        //     isPublished: event.isPublished,
        //     recordPerPage: event.recordPerPage,
        //     sortParticipant: event.sortParticipant,
        //     sortPrize: event.sortPrize,
        //     pageNum: event.pageEnum,
        //   );
        //   contests.forEach((element) {
        //     element.mine = true;
        //   });
        //   // if (type == ContestModeEnum.attended) {
        //   //   if (myContests.isNotEmpty) {
        //   //     pageEnum = event.pageEnum;
        //   //   }
        //   // }
        // }
        if (contests.isNotEmpty) {
          pageEnum = event.pageEnum;
        }
        if (event.pageEnum == 1) {
          listContest = [];
        }
        listContest = [...listContest, ...contests];
        listContest = _removeDuplicates(listContest);
        emit(_SuccessState(
            state.data.copyWith(listContest: listContest, pageNum: pageEnum)));
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data, errorMessage: e.toString()));
      }
    });



    on<_FilterEvent>((event, emit) async {
      emit(_WaitingState(state.data));
    });
    on<_UpdateEvent>((event, emit) async {
      emit(_LoadingState(state.data));
      List<ContestModel> contests = await _contestRepository.findDataList(
        pageNum: 1,
        listRegister: [],
        listTransaction: [],
        code: event.code,
      );
      if (contests.isNotEmpty) {
        currenContest = contests.first;

        int index = listContest.indexWhere((element) =>
            element.ChallengeCodeId == contests.first.ChallengeCodeId);
        listContest[index] = contests.first;
        emit(_SuccessState(state.data.copyWith(listContest: listContest)));
      }
    });
  }

  List<ContestModel> _removeDuplicates(List<ContestModel> list) {
    Set<String> seen = {};
    List<ContestModel> uniqueList =
        list.where((element) => seen.add(element.ChallengeCodeId)).toList();

    return uniqueList;
  }

  // List<ContestModel> _mergeMyContest(
  //   List<ContestModel> list,
  //   List<ContestModel> myContest,
  // ) {
  //   Set<String> seen = {};
  //   List<ContestModel> listMerge = [...myContest, ...list];
  //   for (var i = 0; i < listMerge.length; i++) {
  //     if (seen.add(listMerge[i].ChallengeCodeId) == false) {
  //       list[i - myContest.length].isParticipated = true;
  //     }
  //   }
  //   return list;
  // }
}
