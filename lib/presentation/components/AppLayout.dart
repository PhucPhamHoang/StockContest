import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/businessLogic/bloc/login/login_bloc.dart';
import 'package:untitled/data/static/ApplicationSetting.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/utils/render/ElemRender.dart';
import 'package:untitled/utils/router/AppRouter.dart';
import 'package:untitled/utils/service/DebugService.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({
    Key? key,
    this.useSafeArea = true,
    this.forceCanNotBack = false,
    this.onBack,
    required this.body,
    this.bottomNavigateBarItemData,
    this.appBar,
    this.autoPadding = true,
    this.showBottomBarNavigate = true,
  }) : super(key: key);

  final bool useSafeArea;

  // final bool isChat;
  // final String title;
  final bool forceCanNotBack;
  final void Function()? onBack;
  final Widget body;
  final bool autoPadding;
  final Widget? appBar;
  final Map<String, dynamic>? bottomNavigateBarItemData;
  final bool showBottomBarNavigate;

  @override
  State<AppLayout> createState() => _AppLayoutState();
}


class _AppLayoutState extends State<AppLayout> with WidgetsBindingObserver {

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.resumed:
        DebugService.printConsole('app state resumed');
        break;
      case AppLifecycleState.inactive:
        DebugService.printConsole('app state inactive');
        break;
      case AppLifecycleState.detached:
        DebugService.printConsole('app state detached');
        break;
      case AppLifecycleState.hidden:
        // TODO: Handle this case.
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     // Status bar color
    //     statusBarColor: Platform.isAndroid
    //         ? Colors.black.withOpacity(0.1)
    //         : Theme.of(context).colorScheme.onPrimary,

    //     // Status bar brightness (optional)
    //     statusBarIconBrightness:
    //         Theme.of(context).brightness == Brightness.light
    //             ? Brightness.dark
    //             : Brightness.light, // For Android (dark icons)
    //     statusBarBrightness:
    //         Theme.of(context).colorScheme.brightness, // For iOS (dark icons)
    //   ),
    // );

    var _appBar = widget.appBar;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: WillPopScope(
        onWillPop: !Navigator.canPop(context)
            ? () async {
          bool canExit = await AppRouter.exitApp(context);

          return canExit;
        }
            : null,
        child: Scaffold(
          appBar: _appBar != null
              ? PreferredSize(
            // preferredSize: const Size.fromHeight(56),
            preferredSize: const Size.fromHeight(59),
            child: _appBar,
          )
              : null,
          backgroundColor: AppColor.black,
          body: MultiBlocListener(
            listeners: [
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                  state.maybeMap(
                    error: (state){
                      context.go("/login");
                    },
                      orElse: (){

                      });
                },
              ),
            ],
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: widget.autoPadding ? 20 : 0),
              child: widget.body,
            ),
          ),
          // bottomNavigationBar: widget.showBottomBarNavigate
          //     ? const BottomNavigationBarComponent()
          //     : null,
        ),
      ),
    );
  }
}
// class _AppLayoutState extends State<AppLayout> {
//   @override
//   Widget build(BuildContext context) {
//     var _appBar = widget.appBar;
//     return GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         onTap: () {
//           FocusScope.of(context).unfocus();
//         },
//         child: WillPopScope(
//           onWillPop: !Navigator.canPop(context)
//               ? () async {
//                   bool canExit = await AppRouter.exitApp(context);
//
//                   return canExit;
//                 }
//               : null,
//           child: Scaffold(
//             appBar: _appBar != null
//                 ? PreferredSize(
//                     preferredSize: const Size.fromHeight(59),
//                     child: _appBar,
//                   )
//                 : null,
//             backgroundColor: AppColor.black,
//             body: Padding(
//               padding:
//               EdgeInsets.symmetric(horizontal: widget.autoPadding ? 20 : 0),
//               child: widget.body,
//             ),
//           ),
//         ));
//   }
// }
