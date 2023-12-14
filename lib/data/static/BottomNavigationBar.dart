// import 'package:flutter/material.dart';
//
// class BottomNavigationBarList {
//   static Map<String, dynamic> homeItem = {
//     'text': 'Home',
//     'icon': const ImageIcon(
//       AssetImage('assets/icon/home_icon.png'),
//     ),
//     'label': 'home',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.home.name,
//   };
//
//   static Map<String, dynamic> functionsItem = {
//     'text': 'Chức năng',
//     'icon': const ImageIcon(
//       AssetImage('assets/icon/function_icon.png'),
//     ),
//     'label': 'function',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.functions.name,
//   };
//
//   static Map<String, dynamic> advisersItem = {
//     'text': 'Cố vấn',
//     'icon': const ImageIcon(
//       AssetImage('assets/icon/adviser_icon.png'),
//     ),
//     'label': 'adviser',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.advisers.name,
//   };
//
//   static Map<String, dynamic> chatItem = {
//     'text': 'Chat',
//     'icon': const ImageIcon(
//       AssetImage('assets/icon/chat_icon.png'),
//     ),
//     'badge': SocketTypeEnum.chat.name,
//     'label': 'chat',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.chat.name,
//   };
//
//   static Map<String, dynamic> cartItem = {
//     // 'text': 'Giỏ hàng',
//     'text': 'Đơn hàng',
//     'icon': const ImageIcon(
//       AssetImage('assets/icon/cart_icon.png'),
//     ),
//     'label': 'cart',
//     'bodyWidget': Container(),
//     // 'routeName': RouteNameEnum.cart.name,
//     'routeName': RouteNameEnum.mySubscription.name,
//   };
//
//   static Map<String, dynamic> notificationItem = {
//     'text': 'Thông báo',
//     'icon': const ImageIcon(
//       AssetImage('assets/icon/notification_icon.png'),
//     ),
//     'badge': SocketTypeEnum.notification.name, // later send key name
//     'label': 'notification',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.notification.name,
//   };
//
//   static Map<String, dynamic> subscriptionPlansItem = {
//     'text': 'Gói dịch vụ',
//     'icon': const Icon(Icons.subscriptions_rounded),
//     'label': 'home',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.subscriptionPlans.name,
//   };
//
//   static Map<String, dynamic> placingOrderItem = {
//     'text': 'Đặt lệnh',
//     'icon': const ImageIcon(
//       AssetImage('assets/icon/order_placing_icon.png'),
//     ),
//     'label': 'orderPlacing',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.orderPlacing.name,
//     'navigationType': 'push',
//   };
//
//   static Map<String, dynamic> contest = {
//     'text': 'Cuộc thi',
//     'icon': const ImageIcon(
//       AssetImage(AppAsset.contestIcon),
//     ),
//     'label': 'contest',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.contest.name,
//     'navigationType': 'push',
//   };
//   static Map<String, dynamic> transaction = {
//     'text': 'Giao dịch',
//     'icon': const ImageIcon(
//       AssetImage(AppAsset.transactionIcon),
//     ),
//     'label': 'transaction',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.transactionContest.name,
//     'navigationType': 'push',
//   };
//   static Map<String, dynamic> contestHome = {
//     'text': 'Home',
//     'icon': const ImageIcon(
//       AssetImage(AppAsset.homeIcon),
//     ),
//     'label': 'contestHome',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.homeContest.name,
//     'navigationType': 'push',
//   };
//   static Map<String, dynamic> wallet = {
//     'text': 'Thẻ Vick',
//     'icon': const ImageIcon(
//       AssetImage(AppAsset.walletIcon),
//     ),
//     'label': 'cardVick',
//     'bodyWidget': Container(),
//     'routeName': RouteNameEnum.homeCard.name,
//     'navigationType': 'push',
//   };
//   static List<Map<String, dynamic>> listRegistrationReviewing = [
//     advisersItem,
//     notificationItem,
//   ];
//
//   static List<Map<String, dynamic>> listRegistration = [
//     functionsItem,
//     advisersItem,
//     cartItem,
//     notificationItem,
//   ];
//
//   static List<Map<String, dynamic>> listDefault = [
//     functionsItem,
//     advisersItem,
//     cartItem,
//     notificationItem,
//   ];
//
//   static List<Map<String, dynamic>> listCustomerReviewing = [
//     functionsItem,
//     chatItem,
//     homeItem,
//     notificationItem,
//   ];
//
//   static List<Map<String, dynamic>> listCustomer = [
//     functionsItem,
//     chatItem,
//     homeItem,
//     cartItem,
//     notificationItem,
//   ];
//
//   static List<Map<String, dynamic>> listAdviser = [
//     chatItem,
//     placingOrderItem,
//     homeItem,
//     functionsItem,
//     notificationItem,
//   ];
//
//   static List<Map<String, dynamic>> listAssistantAdvisor = [
//     chatItem,
//     homeItem,
//     functionsItem,
//     notificationItem,
//   ];
//   static List<Map<String, dynamic>> listContest = [
//     contest,
//     transaction,
//     contestHome,
//     wallet,
//     notificationItem,
//   ];
// }
