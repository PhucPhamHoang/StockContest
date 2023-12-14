import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart' as eb;
import 'package:go_router/go_router.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/naviagationBar/BottomNavigationBarCustom.dart';

class ContestDashboardScreen extends StatefulWidget {
  const ContestDashboardScreen({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  State<ContestDashboardScreen> createState() => _ContestDashboardScreenState();
}

class _ContestDashboardScreenState extends State<ContestDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationCustom(
        listItem: const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAsset.contestIcon)), label: 'Cuộc thi'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAsset.transactionIcon)), label: 'Giao dịch'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAsset.contestHomeIcon)), label: 'Home'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAsset.rankingIcon)), label: 'Xếp hạng'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAsset.meIcon)), label: 'Tôi'),
        ],
        onTap: onTap,
        currentIndex: _calculateSelectedIndex(context),
      ),
      body: widget.child,
    );
  }

  Widget _buildItemBadge(Widget icon, int badgeCount, {bool isRight = false}) {
    bool isRight = false;
    return eb.Badge(
      badgeStyle: badgeCount == 0
          ? const eb.BadgeStyle(
          badgeColor: Colors.transparent, padding: EdgeInsets.zero)
          : const eb.BadgeStyle(
        badgeColor: AppColor.orange,
        padding: EdgeInsets.all(4),
      ),
      badgeAnimation: const eb.BadgeAnimation.scale(),
      position: eb.BadgePosition.bottomStart(
        bottom: badgeCount > 99 ? 8 : 6,
        start: isRight ? 16 : -8,
      ),
      badgeContent: badgeCount == 0
          ? Container()
          : Text(
        badgeCount > 99 ? '99+' : '$badgeCount',
        style: TextStyle(
          fontSize: badgeCount > 99 ? 8 : 10,
          color: Colors.white,
        ),
      ),
      child: icon,
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState
        .of(context)
        .uri
        .toString();
    if (location.startsWith('/contest')) {
      return 0;
    }
    if (location.startsWith('/transaction')) {
      return 1;
    }
    if (location.startsWith('/contestHome')) {
      return 2;
    }
    if (location.startsWith('/ranking')) {
      return 3;
    }
    if (location.startsWith('/me')) {
      return 4;
    }
    return 2;
  }

  void onTap(int value) {
    switch (value) {
      case 0:
        return context.go('/contest');
      case 1:
        return context.go('/transaction');
      case 2:
        return context.go('/contestHome');
      case 3:
        return context.go('/ranking');
      case 4:
        return context.go('/me');
      default:
        return context.go('/contestHome');
    }
  }
// BottomNavigationBarItem buildChild(RouteNameEnum route) {
//   return BottomNavigationBarItem(
//     backgroundColor: Theme.of(context).colorScheme.secondary,
//     icon: Padding(
//       padding: const EdgeInsets.only(bottom: 8),
//       child: _buildItemBadge(route.iconRoute, 0),
//     ),
//     label: route.label,
//   );
// }

// Widget _buildItemBadgeByType(Widget icon, String? type) {
//   if (type != null) {
//     if (type == SocketTypeEnum.notification.name) {
//       return BlocBuilder<NotificationInfoBloc, NotificationInfoState>(
//           builder: (context, notificationInfoState) {
//             int unseenNotificationCount =
//                 BlocProvider.of<NotificationInfoBloc>(context)
//                     .unseenNotificationCount;
//
//             if (notificationInfoState is NotificationInfoUnseenUpdatedState) {
//               unseenNotificationCount = notificationInfoState.unseenCount;
//             }
//
//             return _buildItemBadge(
//               icon,
//               unseenNotificationCount,
//               isRight: true,
//             );
//           });
//     } else if (type == SocketTypeEnum.chat.name) {
//       return BlocBuilder<ViewChatMessageBloc, ViewChatMessageState>(
//           builder: (context, viewChatMessageState) {
//             int unSeenChatAllCount =
//                 BlocProvider.of<ViewChatMessageBloc>(context).unSeenChatAllCount;
//
//             int unSeenChatAdviserNoticeCount =
//                 BlocProvider.of<ViewChatMessageBloc>(context)
//                     .unSeenChatAdviserNoticeCount;
//
//             if (viewChatMessageState is ViewChatMessageAllLoadedState ||
//                 viewChatMessageState is ViewChatMessageAdviserNoticeLoadedState) {
//               unSeenChatAllCount = BlocProvider.of<ViewChatMessageBloc>(context)
//                   .unSeenChatAllCount;
//
//               unSeenChatAdviserNoticeCount =
//                   BlocProvider.of<ViewChatMessageBloc>(context)
//                       .unSeenChatAdviserNoticeCount;
//             }
//
//             return _buildItemBadge(
//               icon,
//               unSeenChatAllCount + unSeenChatAdviserNoticeCount,
//               isRight: true,
//             );
//           });
//     }
//   }
//   return icon;
// }
}
