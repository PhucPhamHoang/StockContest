import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/businessLogic/bloc/login/login_bloc.dart';
import 'package:untitled/data/repository/LoginRepository.dart';
import 'package:untitled/presentation/screens/Login.dart';
import 'package:untitled/utils/router/AppRouter.dart';

void main() {
  runApp(
      const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = AppRouter().router;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LoginRepository>(
            create: (context) => LoginRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(
                RepositoryProvider.of<LoginRepository>(context)),
          ),
        ],
        child:  MaterialApp.router(
          // routerDelegate: router.routerDelegate,
          // routeInformationParser: router.routeInformationParser,
          routerConfig: router,
          title: 'Go Router',
        )
      ),
    );


  }
}

