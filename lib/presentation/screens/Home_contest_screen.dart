// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:collection/collection.dart';
// import 'package:untitled/presentation/components/AppAsset.dart';
// import 'package:untitled/presentation/components/AppBarCustom.dart';
// import 'package:untitled/presentation/components/AppButton.dart';
// import 'package:untitled/presentation/components/AppCarosel.dart';
// import 'package:untitled/presentation/components/AppColor.dart';
// import 'package:untitled/presentation/components/AppConstant.dart';
// import 'package:untitled/presentation/components/AppImage.dart';
// import 'package:untitled/presentation/components/AppLayout.dart';
// import 'package:untitled/presentation/components/AppStyle.dart';
// import 'package:untitled/presentation/components/AppTitle.dart';
// import 'package:untitled/presentation/components/card/card_item.dart';
// import 'package:untitled/presentation/components/card/card_list.dart';
//
// class HomeContestScreen extends StatefulWidget {
//   const HomeContestScreen({super.key});
//
//   @override
//   State<HomeContestScreen> createState() => _HomeContestScreenState();
// }
//
// class _HomeContestScreenState extends State<HomeContestScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _controller;
//   // var images = [
//   //   AppAsset.bannerTraining,
//   //   AppAsset.bannerTraining,
//   //   AppAsset.bannerTraining
//   // ];
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AppLayout(
//         appBar: AppBarCustom(
//           title: 'Home',
//          // leading: AppImage(path: AppAsset.logoVick),
//           action: Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   // Navigator.of(context).push(Navigator
//                   //   MaterialPageRoute(
//                   //     builder: (context) => const AppNotificationScreen(),
//                   //   ),
//                   // );
//                 },
//                 child: AppImage(
//                   height: 25,
//                   path: AppAsset.bellIcon,
//                   color: AppColor.orange,
//                 ),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               InkWell(
//                 onTap: () {
//                   // Navigator.of(context).push(
//                     // MaterialPageRoute(
//                     //   builder: (context) => const FeatureScreen(),
//                     // ),
//                   // );
//                 },
//                 child: AppImage(
//                   height: 25,
//                   path: AppAsset.setting,
//                   color: AppColor.orange,
//                 ),
//               ),
//             ],
//           ),
//           onPressLeading: () {
//             // RouteNavigation.instance.navigateNamedRoute(
//             //     RouteNavigation.navigationKey.currentContext ?? context,
//             //     RouteNameEnum.homeCommon.name,
//             //     force: true);
//           },
//         ),
//         autoPadding: false,
//         showBottomBarNavigate: false,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: AppConstant.marginContent,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),horizon
//                 child: AppTitle(
//                     leading: 'CUỘC THI GẦN NHẤT',
//                     trailing: 'Xem tất cả',
//                     onTap: () {
//                       // context.read<NavigationTabBloc>().add(
//                       //     const NavigationTabEvent.fetch(
//                       //         isMyContest: false,
//                       //         route: RouteNameEnum.contestAll));
//                       // Navigator.of(context).push(MaterialPageRoute(
//                       //     builder: (context) => ContestAllScreen()));
//                     }),
//               ),
//               const SizedBox(
//                 height: 6,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: BlocProvider(
//                   create: (context) => ContestBloc(
//                       RepositoryProvider.of<ContestRepository>(context))
//                     ..add(const ContestEvent.fetch(
//                         type: ContestModeEnum.all,
//                         pageEnum: 1,
//                         recordPerPage: 5,
//                         isPublished: true)),
//                   child: BlocBuilder<ContestBloc, ContestState>(
//                     builder: (context, state) {
//                       var listContest = state.data.listContest;
//                       return CardList(
//                         widgets: List.generate(listContest.length, (index) {
//                           var item = listContest[index];
//                           return InkWell(
//                             onTap: () {
//                               context.read<ContestBloc>().currenContest = item;
//                               Navigator.of(context).push(
//                                 MaterialPageRoute(
//                                   builder: (_) => ContestDetailScreen(
//                                       bloc: context.read<ContestBloc>()),
//                                 ),
//                               );
//                             },
//                             child: CardItem.extend(
//                               title: item.competitionCode,
//                               subtitle:
//                               'GTD ${item.guarantee?.toStringAsSeparator}',
//                               subvalue: item.registerStatus.title,
//                               value: buildExpiredTime(
//                                   item.endRegisterDate ?? DateTime.now(),
//                                   item.registerStatus),
//                               hasDivider: index != (listContest.length - 1),
//
//                               // padding: const EdgeInsets.only(right: 13),
//                               // margin: const EdgeInsets.only(left: 13),
//                             ),
//                           );
//                         }),
//                         replace: 'Không có cuộc thi',
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: AppConstant.spacingDefault,
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: AppTitle(leading: 'CUỘC THI GIẢI THƯỞNG LỚN'),
//               ),
//               const SizedBox(
//                 height: 6,
//               ),
//               BlocProvider(
//                 create: (context) => ContestBloc(
//                     RepositoryProvider.of<ContestRepository>(context))
//                   ..add(ContestEvent.fetch(
//                     type: ContestModeEnum.all,
//                     pageEnum: 1,
//                     recordPerPage: 5,
//                     isPublished: true,
//                     sortPrize: SortEnum.desc.name,
//                   )),
//                 child: BlocBuilder<ContestBloc, ContestState>(
//                   builder: (context, state) {
//                     return state.data.listContest.isEmpty
//                         ? const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 20),
//                       child: CardList(
//                         widgets: [],
//                         replace: 'Không có cuộc thi',
//                       ),
//                     )
//                         : AppCarousel(
//                         enlargeFactor: 0.2,
//                         viewportFraction: 0.9,
//                         aspectRatio: 390 / 330,
//                         infiniteScroll: state.data.listContest.length > 1,
//                         carouselItems:
//                         state.data.listContest.map((contest) {
//                           return CarouselItem(
//                             onPress: () {
//                               context.read<ContestBloc>().currenContest =
//                                   contest;
//                               Navigator.of(context).push(
//                                 MaterialPageRoute(
//                                   builder: (_) => ContestDetailScreen(
//                                       bloc: context.read<ContestBloc>()),
//                                 ),
//                               );
//                             },
//                             child: CardList(
//                               widgets: [
//                                 // AppCarousel(
//                                 //   viewportFraction: 1,
//                                 //   aspectRatio: 390 / 245,
//                                 //   autoPlay: false,
//                                 //   infiniteScroll:true,
//                                 //   // durationPlay: const Duration(seconds: 99999),
//                                 //   carouselItems: images
//                                 //       .map(
//                                 //         (e) => CarouselItem(
//                                 //           image: e,
//                                 //           onPress: () {},
//                                 //         ),
//                                 //       )
//                                 //       .toList(),
//                                 // ),
//                                 Container(
//                                   clipBehavior: Clip.hardEdge,
//                                   decoration: const BoxDecoration(
//                                       borderRadius: BorderRadius.only(
//                                           topLeft: Radius.circular(10),
//                                           topRight: Radius.circular(10))),
//                                   height: 245,
//                                   child: AppImage(
//                                     fit: BoxFit.cover,
//                                     path: contest.image?.isNotEmpty == true
//                                         ? contest.image
//                                         : AppAsset.bannerTraining,
//                                   ),
//                                 ),
//                                 CardItem.extend(
//                                   title: contest.competitionCode,
//                                   subtitle: contest.registerStatus.title,
//                                   value: AppButton.defaultButton(
//                                       text: 'THAM GIA',
//                                       onPress: () {
//                                         // AppBottomSheet.customButtomSheet(
//                                         //     context: context,
//                                         //     child: PurchaseTicketScreen(
//                                         //       contest: contest,
//                                         //     ));
//                                       }),
//                                 )
//                               ],
//                               replace: 'Không có cuộc thi',
//                             ),
//                           );
//                         }).toList());
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: AppConstant.spacingDefault,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: AppTitle(
//                   leading: 'CUỘC THI CỦA TÔI',
//                   trailing: 'Xem tất cả',
//                   onTap: () {
//                     // context.read<NavigationTabBloc>().add(
//                     //     const NavigationTabEvent.fetch(
//                     //         route: RouteNameEnum.contestAll,
//                     //         isMyContest: true));
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: 6,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: BlocProvider(
//                   create: (context) => ContestBloc(
//                       RepositoryProvider.of<ContestRepository>(context))
//                     ..add(const ContestEvent.fetch(
//                         pageEnum: 1,
//                         recordPerPage: 5,
//                         isPublished: true,
//                         type: ContestModeEnum.attended)),
//                   child: BlocBuilder<ContestBloc, ContestState>(
//                     builder: (context, state) {
//                       return CardList(
//                         widgets: List.generate(state.data.listContest.length,
//                                 (index) {
//                               var item = state.data.listContest[index];
//                               return InkWell(
//                                 onTap: () {
//                                   // context.read<ContestBloc>().currenContest = item;
//                                   // Navigator.of(context).push(
//                                   //   MaterialPageRoute(
//                                   //     builder: (_) => ContestDetailScreen(
//                                   //         bloc: context.read<ContestBloc>()),
//                                   //   ),
//                                   // );
//                                 },
//                                 child: CardItem.extend(
//                                   title: item.competitionCode,
//                                   subtitle: item.registerStatus.title,
//                                   value: item.prizePool?.toStringAsSeparator,
//                                   hasDivider:
//                                   index != state.data.listContest.length - 1,
//                                   isNavigate: true,
//                                   // padding: const EdgeInsets.only(right: 13),
//                                   // margin: const EdgeInsets.only(left: 13),
//                                 ),
//                               );
//                             }),
//                         replace: 'Không có cuộc thi',
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: AppConstant.marginContent,
//               ),
//             ],
//           ),
//         ));
//   }
//
//   // Widget buildExpiredTime(DateTime expiredTime, RegisterStatusEnum status) {
//   //   return Row(
//   //     mainAxisAlignment: MainAxisAlignment.end,
//   //     children: [
//   //       (status != RegisterStatusEnum.closed &&
//   //           status != RegisterStatusEnum.canceled &&
//   //           expiredTime
//   //               .subtract(const Duration(days: 1))
//   //               .compareTo(DateTime.now()) <
//   //               0)
//   //           ? TextTimer(
//   //           time: expiredTime,
//   //           styleTime: AppStyle.largeRegular.copyWith(
//   //             color: AppColor.redDark,
//   //           ))
//   //           : Text(expiredTime.textDate,
//   //           style: AppStyle.largeRegular.copyWith(
//   //             color: AppColor.grayDark,
//   //           )),
//   //       const Icon(
//   //         Icons.navigate_next,
//   //         color: AppColor.grayDark,
//   //       )
//   //     ],
//   //   );
//   // }
// }
