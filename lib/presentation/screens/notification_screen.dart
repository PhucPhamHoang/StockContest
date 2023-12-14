import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/businessLogic/bloc/notification_info/notification_info_bloc.dart';
import 'package:untitled/businessLogic/bloc/user_info/user_info_bloc.dart';
import 'package:untitled/data/model/NotificationInfoModel.dart';
import 'package:untitled/data/static/extension/DatetimeExtension.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/AppTabBar.dart';
import 'package:untitled/presentation/components/card/AppDivider.dart';

class AppNotificationScreen extends StatefulWidget {
  const AppNotificationScreen({super.key});

  @override
  State<AppNotificationScreen> createState() => _AppNotificationScreenState();
}

class _AppNotificationScreenState extends State<AppNotificationScreen> {
  final ScrollController _unseenNotiScrollController = ScrollController();
  final ScrollController _seenNotiScrollController = ScrollController();
  int currentTap = 0;
  String? username;

  @override
  void initState() {
    super.initState();
    username = context.read<UserInfoBloc>().userInfoModel?.userid;
    _unseenNotiScrollController.addListener(unseenScrollListener);
    _seenNotiScrollController.addListener(seenScrollListener);
    context.read<NotificationInfoBloc>().add(NotificationInfoEvent.loadSeenNotification(pageNum: 1,userid: username));
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        appBar: AppBarCustom(
          autoLeading: true,
          action: 'Đánh dấu',
          onPressAction: () {},
          title: 'Thông báo',
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: buildTabWidget(),
        ));
  }

  Widget buildTabWidget() {
    return BlocBuilder<NotificationInfoBloc, NotificationInfoState>(
      builder: (context, state) {
        return Column(
          children: [
            buildTabBar(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: buildContentTab(
                currentTap,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildTabBar() {
    return Builder(builder: (context) {
      return Container(
        width: 200,
        child: AppCupertinoTabBar(
            backgroundColor: AppColor.gray6Dark,
            foregroundColor: AppColor.gray2Dark.withOpacity(0.2),
            widgets: [
              Center(
                child: Text(
                  'Chưa xem',
                  style: AppStyle.normalRegular.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Đã xem',
                  style: AppStyle.normalRegular.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
            valueGetter: () => currentTap,
            useShadow: false,
            onTap: (index) {
              changeTab(context, index);
            },
            useSeparators: true,
            innerHorizontalPadding: 10.0,
            innerVerticalPadding: 10.0,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            curve: Curves.linearToEaseOut,
            duration: const Duration(milliseconds: 200),
            allowExpand: true,
            allowScrollable: false,
            fittedWhenScrollable: false,
            animateWhenScrollable: false,
            animateUntilScrolled: false,
            outerHorizontalPadding: 0,
            outerVerticalPadding: 0),
      );
    });
  }

  Widget buildContentTab(int index) {
    if (index == 0) {
      return buildNotificationList(_unseenNotiScrollController, false);
    } else if (index == 1) {
      return buildNotificationList(_seenNotiScrollController, true);
    }
    return Container();
  }

  void changeTab(BuildContext context, int index) {
    if (index == 0) {
      context.read<NotificationInfoBloc>().add(NotificationInfoEvent.loadUnseenNotification(pageNum: 1,userid: username));

      // BlocProvider.of<NotificationInfoBloc>(context).add(
      //   OnUpdateSeenNotificationCountEvent(),
      // );
    }
    if (index == 1) {
      context.read<NotificationInfoBloc>().add(NotificationInfoEvent.loadSeenNotification(pageNum: 1,userid: username));

      // BlocProvider.of<NotificationInfoBloc>(context).add(
      //   OnUpdateUnseenNotificationCountEvent(),
      // );
    }
    currentTap = index;
  }

  Widget buildNotificationList(ScrollController controller, bool seen) {
    return Builder(builder: (context) {
      return BlocBuilder<NotificationInfoBloc, NotificationInfoState>(
        builder: (context, state) {
          List<NotificationInfoModel> notifications = seen
              ? context.read<NotificationInfoBloc>().notificationSeenList
              : context.read<NotificationInfoBloc>().notificationUnseenList;
          return ListView.builder(
              controller: controller,
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                var item = notifications[index];
                return InkWell(
                  onTap: () {
                    // handleClickNotification(notificationModel, seen);
                    // _redirectOnClickNotification(notificationModel);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppDivider(
                        thickness: 0.2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        item.contentSend,
                        style: AppStyle.medianRegular,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        item.createddate.dateTimeNoSpace,
                        style: AppStyle.normalRegular
                            .copyWith(color: AppColor.grayDark),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                );
              });
        },
      );
    });
  }

  void unseenScrollListener() {
    if (_unseenNotiScrollController.offset >=
        _unseenNotiScrollController.position.maxScrollExtent &&
        !_unseenNotiScrollController.position.outOfRange) {
      int nextPage = context.read<NotificationInfoBloc>().currentUnseenPageNum + 1;

      context.read<NotificationInfoBloc>().add(NotificationInfoEvent.loadUnseenNotification(pageNum: nextPage,userid: username));

    }
  }

  void seenScrollListener() {
    if (_seenNotiScrollController.offset >=
        _seenNotiScrollController.position.maxScrollExtent &&
        !_seenNotiScrollController.position.outOfRange) {
      int nextPage = context.read<NotificationInfoBloc>().currentSeenPageNum + 1;

      context.read<NotificationInfoBloc>().add(NotificationInfoEvent.loadSeenNotification(pageNum: nextPage,userid: username));
    }
  }
}
