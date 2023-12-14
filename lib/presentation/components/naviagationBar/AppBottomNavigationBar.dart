// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitled/data/static/enum/RouteNameEnum.dart';
// import 'package:untitled/presentation/components/naviagationBar/BottomNavigationBarCustom.dart';
//
// class AppBottomNavigationBar extends StatefulWidget {
//   final RouteNameEnum initialPage;
//   final List<RouteNameEnum> listRoute;
//   final Map<String,dynamic> listRoute1;
//   final BottomNavigationBarItem Function(RouteNameEnum) buildChild;
//   const AppBottomNavigationBar({
//     super.key,
//     required this.initialPage,
//     required this.listRoute,
//     required this.listRoute1,
//     required this.buildChild,
//   });
//
//   @override
//   State<StatefulWidget> createState() => AppBottomNavigationBarState();
// }
//
// class AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
//   late RouteNameEnum currentRoute;
//
//   Map<String, GlobalKey<NavigatorState>> navigatorKeys = {};
//
//   void _selectTab(RouteNameEnum route) {
//     if (route.name == currentRoute.name) {
//       navigatorKeys[route.name]!.currentState!.popUntil((route) {
//         return route.toString().contains('/${currentRoute.name}') == true;
//       });
//     } else {
//       setState(() => currentRoute = route);
//     }
//   }
//
//   @override
//   void initState() {
//     currentRoute = widget.initialPage;
//     for (var route in widget.listRoute) {
//       navigatorKeys[route.name] = GlobalKey<NavigatorState>();
//     }
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // return BlocListener<NavigationTabBloc, NavigationTabState>(
//     //   listener: (context, state) {
//     //     state.maybeMap(
//     //         success: (state) {
//     //           var routeName = state.data.routeName;
//     //           if (routeName != null) _selectTab(routeName);
//     //         },
//     //         orElse: () {});
//     //   },
//     //   child:
//       return WillPopScope(
//         onWillPop: () async {
//           final isFirstRouteInCurrentTab =
//           !await navigatorKeys[currentRoute]!.currentState!.maybePop();
//           if (isFirstRouteInCurrentTab) {
//             // if not on the 'main' tab
//             // select 'main' tab
//             _selectTab(currentRoute);
//             // back button handled by app
//             return false;
//           }
//           // let system handle back button if we're on the first route
//           return isFirstRouteInCurrentTab;
//         },
//         child: Scaffold(
//           // backgroundColor: Colors.black,
//           // body: Stack(
//           //     children: widget.listRoute
//           //         .map((e) => _buildOffstageNavigator(e))
//           //         .toList()),
//           body: TabNavigator(
//             initialRoute: currentRoute,
//             navigatorKey: navigatorKeys[currentRoute.name],
//           ),
//           bottomNavigationBar: BottomNavigationCustom(
//             listRoute: widget.listRoute,
//             currentRoute: currentRoute,
//             onSelectTab: _selectTab,
//             buildChild: widget.buildChild,
//           ),
//         ),
//       // ),
//     );
//   }
//
//   Widget _buildOffstageNavigator(RouteNameEnum route) {
//     return Offstage(
//       offstage: currentRoute.name != route.name,
//       child: TabNavigator(
//         initialRoute: route,
//         navigatorKey: navigatorKeys[route.name],
//       ),
//     );
//   }
// }
