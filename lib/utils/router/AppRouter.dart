import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/presentation/screens/Login.dart';
class AppRouter{
  const AppRouter._();

  static dynamic navigateNamedRoute (){
    GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return LoginScreen(); // Thay bằng màn hình chính của bạn
            },
          ),
        ]
    );
  }
}