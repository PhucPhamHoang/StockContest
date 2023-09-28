import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/presentation/screens/Login.dart';
class AppRouter{
  //const AppRouter._();
  final router = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: '/',
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
         path: "/",
         builder: (context, state) => const LoginScreen(),
       ),
    ],
  );

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
          content: Text('Click twice to exit app'),
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
