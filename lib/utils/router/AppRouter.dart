import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/data/static/enum/RouteNameEnum.dart';
import 'package:untitled/presentation/screens/Contest_Dashboard_Screen.dart';
import 'package:untitled/presentation/screens/Login.dart';
import 'package:untitled/presentation/screens/Home_contest_screen.dart';
import 'package:untitled/presentation/screens/contest_ranking_screen.dart';
import 'package:untitled/presentation/screens/notification_screen.dart';
import 'package:untitled/presentation/screens/testTransaction.dart';
import 'package:untitled/presentation/screens/user/account_info_screen.dart';

class AppRouter {
  //const AppRouter._();
  final router = GoRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      initialLocation: '/login',
      // builder: (BuildContext context, GoRouterState state, GlobalKey<NavigatorState> navigatorKey) {
      //   return MaterialApp.router(
      //     routerDelegate: state.routerDelegate,

      //     routeInformationParser: state.routeInformationParser,
      //   );
      // },
      // navigatorObservers: [GoNavigatorObserver()],
      // initialObservers: [MyObserver()],
      // initialInnerPageBuilders: {
      //   '/login': (context, state, router, parameters) {
      //     return LoginScreen();
      //   },
      //   // '/second': (context, state, router, parameters) {
      //   //   return SecondScreen();
      //   },

      routes: [
        GoRoute(
            path: "/login",
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            }),
        ShellRoute(
          navigatorKey: GlobalKey<NavigatorState>(),
          builder: (context, state, child) {
            return ContestDashboardScreen(child: child);
          },
          routes: <RouteBase>[
            GoRoute(
              path: '/contest',
              builder: (BuildContext context, GoRouterState state) {
                return const Center(child: Text('Cuộc thi'));
                //HomeContestScreen();
              },
            ),
            GoRoute(
              path: '/transaction',
              builder: (BuildContext context, GoRouterState state) {
                return const TransactionContestScreen();
              },
            ),
            GoRoute(
              path: '/contestHome',
              builder: (BuildContext context, GoRouterState state) {
                return const AppNotificationScreen();
              },
            ),
            GoRoute(
              path: '/ranking',
              builder: (BuildContext context, GoRouterState state) {
                return const ContestRankingScreen();
              },
              // routes: [
              //   GoRoute(path: path)
              // ]
            ),
            GoRoute(
              path: '/me',
              builder: (BuildContext context, GoRouterState state) {
                return const AccountInfoScreen();
              },
            ),
          ],
        )
      ]);

  static Future<bool> exitApp(BuildContext context) async {
    DateTime? currentClickTime =
        ApplicationSetting.instance.currentBackPressTime;
    DateTime now = DateTime.now();

    if (currentClickTime == null ||
        now.difference(currentClickTime) > const Duration(seconds: 2)) {
      ApplicationSetting.instance.currentBackPressTime = now;

      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nhấp 2 lần để thoát app'),
        ),
      );
      return Future.value(false);
    }

    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else if (Platform.isIOS) {
      exit(0);
    }

    return Future.value(true);
  }
}
