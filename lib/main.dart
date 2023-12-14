import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/businessLogic/bloc/contestAccountInfo/contest_account_info_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_asset/contest_asset_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_category/contest_category_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_order/contest_order_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_order_history/contest_order_history_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_rank/contest_rank_bloc.dart';
import 'package:untitled/businessLogic/bloc/login/login_bloc.dart';
import 'package:untitled/businessLogic/bloc/notification_info/notification_info_bloc.dart';
import 'package:untitled/businessLogic/bloc/stockInfo/stock_info_bloc.dart';
import 'package:untitled/businessLogic/bloc/stock_order/stock_order_bloc.dart';
import 'package:untitled/businessLogic/bloc/user_info/user_info_bloc.dart';
import 'package:untitled/data/repository/ContestAccountInfoRepository.dart';
import 'package:untitled/data/repository/ContestRepository.dart';
import 'package:untitled/data/repository/LoginRepository.dart';
import 'package:untitled/data/repository/NotificationRepository.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/data/repository/UserRepository.dart';
import 'package:untitled/presentation/screens/Login.dart';
import 'package:untitled/utils/router/AppRouter.dart';
import 'package:untitled/utils/service/StartupService.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await StartupService.instance.runStartupService();

  runApp(const MyApp());
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
        RepositoryProvider<StockOrderRepository>(
            create: (context) => StockOrderRepository()),
        RepositoryProvider<ContestAccountInfoRepository>(
            create: (context) => ContestAccountInfoRepository()),
        RepositoryProvider<ContestRepository>(
            create: (context) => ContestRepository()),
        RepositoryProvider<UserRepository>(
            create: (context) => UserRepository()),
        RepositoryProvider<NotificationRepository>(
            create: (context) => NotificationRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(
                RepositoryProvider.of<LoginRepository>(context)),
          ),
          BlocProvider<StockInfoBloc>(
            create: (context) => StockInfoBloc(
                RepositoryProvider.of<StockOrderRepository>(context)),
          ),
          BlocProvider<ContestAccountInfoBloc>(
            create: (context) => ContestAccountInfoBloc(
                RepositoryProvider.of<ContestAccountInfoRepository>(context)),
          ),
          BlocProvider<StockOrderBloc>(
            create: (context) => StockOrderBloc(
                RepositoryProvider.of<StockOrderRepository>(context)),
          ),
          BlocProvider<ContestAssetBloc>(
            create: (context) => ContestAssetBloc(
                RepositoryProvider.of<StockOrderRepository>(context)),
          ),
          BlocProvider<ContestCategoryBloc>(
            create: (context) => ContestCategoryBloc(
                RepositoryProvider.of<StockOrderRepository>(context)),
          ),
          BlocProvider<ContestOrderBloc>(
            create: (context) => ContestOrderBloc(
                RepositoryProvider.of<StockOrderRepository>(context)),
          ),
          BlocProvider<ContestOrderHistoryBloc>(
            create: (context) => ContestOrderHistoryBloc(
                RepositoryProvider.of<StockOrderRepository>(context)),
          ),
          BlocProvider<ContestRankBloc>(
            create: (context) => ContestRankBloc(
                RepositoryProvider.of<ContestRepository>(context)),
          ),
          BlocProvider<UserInfoBloc>(
            create: (context) => UserInfoBloc(
                RepositoryProvider.of<UserRepository>(context)),
          ),
          BlocProvider<NotificationInfoBloc>(
            create: (context) => NotificationInfoBloc(
                RepositoryProvider.of<NotificationRepository>(context)),
          ),
        ],
        child:  MaterialApp.router(
          // routerDelegate: router.routerDelegate,
          // routeInformationParser: router.routeInformationParser,
          routerConfig: router,
        )
      ),
    );


  }
}

