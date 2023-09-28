import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utils/router/AppRouter.dart';

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

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
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
                    preferredSize: const Size.fromHeight(59),
                    child: _appBar,
                  )
                : null,
            body: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: widget.autoPadding ? 20 : 0),
              child: widget.body,
            ),
          ),
        ));
  }
}
