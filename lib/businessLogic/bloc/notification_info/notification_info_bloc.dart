import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled/data/model/NotificationInfoModel.dart';
import 'package:untitled/data/repository/NotificationRepository.dart';
import 'package:untitled/utils/service/DebugService.dart';

part 'notification_info_event.dart';
part 'notification_info_state.dart';
part 'notification_info_bloc.freezed.dart';

class NotificationInfoBloc extends Bloc<NotificationInfoEvent, NotificationInfoState> {
  final NotificationRepository _notificationRepository;
  List<NotificationInfoModel> notificationSeenList = [];
  List<NotificationInfoModel> notificationUnseenList = [];
  int unseenNotificationCount = 0;

  late int currentSeenPageNum;
  late int currentUnseenPageNum;

  NotificationInfoBloc(this._notificationRepository) : super(const _InitState(_$_NotificationInfoData())) {
    on<_FetchSeenNotificationEvent>((event, emit) async {
      emit(_LoadingState(state.data));
      try {
        final List<NotificationInfoModel> list = await _notificationRepository.getNotificationList(
          pageNum: event.pageNum,
          isRead: true,
          userId: event.userid
        );

        if (event.pageNum == 1) {
          notificationSeenList = [];
        }

        notificationSeenList = _removeDuplicates([...notificationSeenList, ...list]);

        if (list.isNotEmpty) {
          currentSeenPageNum = event.pageNum??1;
        }
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data,errorMessage: e.toString()));
      } finally {
        emit(_SuccessState(
            state.data.copyWith(
              notificationSeenList: notificationSeenList,
              notificationUnseenList: notificationUnseenList,
            )
        ));
      }
    });
    on<_FetchUnseenNotificationEvent>((event, emit) async {
      emit(_LoadingState(state.data));
      try {
        final List<NotificationInfoModel> list = await _notificationRepository.getNotificationList(
            pageNum: event.pageNum,
            isRead: false,
            userId: event.userid
        );

        if (event.pageNum == 1) {
          notificationUnseenList = [];
        }

        notificationUnseenList = _removeDuplicates([...notificationUnseenList, ...list]);

        if (list.isNotEmpty) {
          currentUnseenPageNum = event.pageNum??1;
        }
      } catch (e) {
        DebugService.printConsole('catch $e');
        emit(_ErrorState(state.data,errorMessage: e.toString()));
      } finally {
        emit(_SuccessState(
            state.data.copyWith(
              notificationSeenList: notificationSeenList,
              notificationUnseenList: notificationUnseenList,
            )
        ));
      }
    });
  }
  List<NotificationInfoModel> _removeDuplicates(List<NotificationInfoModel> list) {
    Set<String> seen = {};
    List<NotificationInfoModel> uniqueList = list.where((element) => seen.add(element.id.toString())).toList();

    return uniqueList;
  }
}
