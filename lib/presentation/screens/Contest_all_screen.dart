// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:stalkmobile/businessLogic/training/contest/contest_bloc.dart';
// import 'package:stalkmobile/businessLogic/training/navigation_tab/navigation_tab_bloc.dart';
// import 'package:stalkmobile/data/models_v2/contest/contest_model.dart';
// import 'package:stalkmobile/data/repository_v2/contest/contest_repository.dart';
// import 'package:stalkmobile/data/static/enum/ContestStatusEnum.dart';
// import 'package:stalkmobile/data/static/enum/ContestFilterEnum.dart';
// import 'package:stalkmobile/data/static/extensions.dart/DateTimeExtension.dart';
// import 'package:stalkmobile/data/static/extensions.dart/DoubleExtension.dart';
// import 'package:stalkmobile/presentation/components_v2/AppBarCustom.dart';
// import 'package:stalkmobile/presentation/components_v2/AppImage.dart';
// import 'package:stalkmobile/presentation/components_v2/AppLayout.dart';
// import 'package:stalkmobile/presentation/components_v2/app_search_text_field.dart';
// import 'package:stalkmobile/presentation/components_v2/card/card_item.dart';
// import 'package:stalkmobile/presentation/components_v2/card/card_list.dart';
// import 'package:stalkmobile/presentation/components_v2/text_timer.dart';
// import 'package:stalkmobile/presentation/screens_v2/contest/contest_detail_screen.dart';
// import 'package:stalkmobile/presentation/screens_v2/contest/contest_filter_screen.dart';
// import 'package:stalkmobile/presentation/screens_v2/contest/contest_guildline_screen.dart';
// import 'package:stalkmobile/utils/theme/AppAsset.dart';
// import 'package:stalkmobile/utils/theme/AppColor.dart';
// import 'package:stalkmobile/utils/theme/AppStyle.dart';
//
// class ContestAllScreen extends StatefulWidget {
//   const ContestAllScreen({super.key});
//
//   @override
//   State<ContestAllScreen> createState() => _ContestAllScreenState();
// }
//
// class _ContestAllScreenState extends State<ContestAllScreen> {
//   int pageEnum = 1;
//   bool isFilter = false;
//   List<AttendStatusEnum> attendFilter = [
//     AttendStatusEnum.none,
//     AttendStatusEnum.attended,
//   ];
//   List<RegisteredStatusEnum> registerFilter = [
//     RegisteredStatusEnum.none,
//     RegisteredStatusEnum.registered,
//     RegisteredStatusEnum.closed
//   ];
//   List<TransactionStatusEnum> transactionFilter = [
//     TransactionStatusEnum.none,
//     TransactionStatusEnum.transacted,
//     TransactionStatusEnum.closed
//   ];
//   SortEnum orderPrize = SortEnum.none;
//   SortEnum orderCard = SortEnum.none;
//   final focusNode = FocusNode();
//   // bool filter
//   TextEditingController textController = TextEditingController();
//   // final keyAll = GlobalKey<AppSwitchState>();
//   // final keyCanTrade = GlobalKey<AppSwitchState>();
//   // final keyTrading = GlobalKey<AppSwitchState>();
//   // final keyParticipated = GlobalKey<AppSwitchState>();
//   // final keyFinished = GlobalKey<AppSwitchState>();
//   ScrollController scrollController = ScrollController();
//   late ContestBloc contestBloc;
//   @override
//   void initState() {
//     super.initState();
//     if (context.read<NavigationTabBloc>().isMyContest == true) {
//       attendFilter = [
//         AttendStatusEnum.attended,
//       ];
//       context.read<NavigationTabBloc>().isMyContest = null;
//     }
//     scrollController.addListener(() {
//       if (scrollController.offset >=
//           scrollController.position.maxScrollExtent &&
//           !scrollController.position.outOfRange) {
//         contestBloc.add(ContestEvent.fetch(
//           pageEnum: pageEnum + 1,
//           name: textController.text,
//           sortPrize: orderPrize.name,
//           sortParticipant: orderCard.name,
//           listRegister: registerFilter,
//           listTransaction: transactionFilter,
//           listAttend: attendFilter,
//         ));
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => contestBloc = ContestBloc(
//         RepositoryProvider.of<ContestRepository>(
//           context,
//         ),
//       )..add(
//         ContestEvent.fetch(pageEnum: 1, listAttend: attendFilter),
//       ),
//       child: AppLayout(
//         appBar: AppBarCustom(
//           title: 'Cuộc thi',
//           action: 'Hướng dẫn',
//           autoLeading: false,
//           onPressAction: () {
//             NavigatorNavigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => ContestGuildlineScreen()));
//           },
//         ),
//         body: SingleChildScrollView(
//           controller: scrollController,
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 25,
//               ),
//               Builder(builder: (context) {
//                 return AppSearchTextField(
//                   controller: textController,
//                   focusNode: focusNode,
//                   onTap: () {
//                     pageEnum = 1;
//                     context
//                         .read<ContestBloc>()
//                         .add(const ContestEvent.filter());
//                   },
//                   onChanged: (value) {
//                     if (value.isNotEmpty) {
//                       context.read<ContestBloc>().add(ContestEvent.fetch(
//                         pageEnum: pageEnum,
//                         name: value,
//                         sortPrize: orderPrize.name,
//                         sortParticipant: orderCard.name,
//                         listRegister: registerFilter,
//                         listTransaction: transactionFilter,
//                         listAttend: attendFilter,
//                       ));
//                     }
//                   },
//                   onSuffixTap: () {
//                     textController.clear();
//                     pageEnum = 1;
//                     context.read<ContestBloc>().add(
//                       ContestEvent.fetch(
//                         pageEnum: pageEnum,
//                         sortPrize: orderPrize.name,
//                         sortParticipant: orderCard.name,
//                         listRegister: registerFilter,
//                         listTransaction: transactionFilter,
//                         listAttend: attendFilter,
//                       ),
//                     );
//                   },
//                   onDone: () {
//                     var text = textController.text;
//                     context.read<ContestBloc>().add(
//                       ContestEvent.fetch(
//                         pageEnum: pageEnum,
//                         name: text.isNotEmpty ? text : null,
//                         sortPrize: orderPrize.name,
//                         sortParticipant: orderCard.name,
//                         listRegister: registerFilter,
//                         listTransaction: transactionFilter,
//                         listAttend: attendFilter,
//                       ),
//                     );
//                   },
//                 );
//               }),
//               const SizedBox(
//                 height: 30,
//               ),
//               BlocBuilder<ContestBloc, ContestState>(
//                 builder: (context, state) {
//                   return state.maybeMap(
//                     waiting: (state) => _buildFilter(),
//                     orElse: () {
//                       pageEnum = state.data.pageNum;
//                       return Column(
//                         children: List.generate(
//                           state.data.listContest.length,
//                               (index) {
//                             final item = state.data.listContest[index];
//                             return InkWell(
//                               onTap: () {
//                                 context.read<ContestBloc>().currenContest =
//                                     item;
//                                 Navigator.of(context).push(
//                                   MaterialPageRoute(
//                                     builder: (_) => ContestDetailScreen(
//                                         bloc: context.read<ContestBloc>()
//                                           ..add(ContestEvent.update(
//                                               code: item.competitionCode))),
//                                   ),
//                                 );
//                               },
//                               child: _buildContest(
//                                 expiredTime:
//                                 item.endRegisterDate ?? DateTime.now(),
//                                 status: item.registerStatus,
//                                 name: item.competitionCode,
//                                 startTime:
//                                 item.beginTradingDate ?? DateTime.now(),
//                                 numberOfCard: item.registerFee?.toInt() ?? 0,
//                                 numberOfParticipant: item.competitionSize ?? 0,
//                                 money: item.prizePool ?? 0,
//                                 hasDivider: index !=
//                                     (state.data.listContest.length - 1),
//                                 isParticipated: item.mine,
//                                 competitionStatus: item.competitionStatus,
//                               ),
//                             );
//                           },
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//             ],
//           ),
//         ),
//         // bottomNavigateBarItemData: BottomNavigateBarList.contest,
//       ),
//     );
//   }
//
//   Widget _buildContest({
//     required DateTime expiredTime,
//     required RegisterStatusEnum status,
//     required String name,
//     required DateTime startTime,
//     required int numberOfCard,
//     required double money,
//     required int numberOfParticipant,
//     required CompetitionStatusEnum competitionStatus,
//     bool isParticipated = false,
//     bool hasDivider = false,
//   }) {
//     double heighText = 25;
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 13),
//       decoration: BoxDecoration(
//           border: hasDivider
//               ? const Border(
//             bottom: BorderSide(
//               color: AppColor.gray2Dark,
//               width: 0.2,
//             ),
//           )
//               : null),
//       child: LayoutBuilder(builder: (context, constraint) {
//         return Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Container(
//               width: constraint.maxWidth / 3,
//               child: status == RegisterStatusEnum.canceled
//                   ? Text(
//                 status.title,
//                 style: AppStyle.largeRegular.copyWith(
//                   color: AppColor.grayDark,
//                 ),
//               )
//                   : Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: heighText,
//                     child: Align(
//                       alignment: Alignment.bottomLeft,
//                       child: ((status != RegisterStatusEnum.closed &&
//                           status !=
//                               RegisterStatusEnum.canceled) &&
//                           expiredTime
//                               .subtract(const Duration(days: 1))
//                               .compareTo(DateTime.now()) <
//                               0)
//                           ? TextTimer(
//                         time: expiredTime,
//                       )
//                           : Text(expiredTime.textDate,
//                           style: AppStyle.medianRegular.copyWith(
//                             color: AppColor.grayDark,
//                           )),
//                     ),
//                   ),
//                   Text(
//                     status.title,
//                     style: AppStyle.smallRegular.copyWith(
//                       color: AppColor.grayDark,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             IntrinsicWidth(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: heighText,
//                     child: Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Text(
//                         name,
//                         style: AppStyle.largeRegular.copyWith(
//                           color: isParticipated
//                               ? AppColor.greenDark
//                               : AppColor.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   // Text(
//                   //   name,
//                   //   style: AppStyle.largeRegular.copyWith(
//                   //     color: AppColor.white,
//                   //   ),
//                   // ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Text(
//                         startTime.textDate,
//                         style: AppStyle.smallRegular
//                             .copyWith(color: AppColor.grayDark),
//                       ),
//                       SizedBox(width: 10),
//                       AppImage(
//                         height: 10,
//                         color: AppColor.orange,
//                         path: AppAsset.cardVickIcon,
//                       ),
//                       Text(
//                         numberOfCard.toString(),
//                         style: AppStyle.smallRegular.copyWith(
//                           color: AppColor.grayDark,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             const Spacer(),
//             IntrinsicWidth(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Align(
//                     child: Row(
//                       children: [
//                         // SizedBox(
//                         //   height: heighText,
//                         //   child: Align(
//                         //     alignment: Alignment.center,
//                         //     child: AppImage(
//                         //       width: 15,
//                         //       color: AppColor.orange,
//                         //       path: AppAsset.cashBagIcon,
//                         //     ),
//                         //   ),
//                         // ),
//                         SizedBox(
//                           height: heighText,
//                           child: Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Text(
//                               money.toStringAsSeparator,
//                               style: AppStyle.normalMedium.copyWith(
//                                 color: competitionStatus ==
//                                     CompetitionStatusEnum.onGoing
//                                     ? AppColor.greenDark
//                                     : AppColor.grayDark,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       AppImage(
//                         color: AppColor.orange,
//                         path: AppAsset.groupIcon,
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         numberOfParticipant.toString(),
//                         style: AppStyle.smallRegular.copyWith(
//                           color: AppColor.grayDark,
//                         ),
//                       ),
//                       Spacer(),
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: const Icon(Icons.navigate_next,
//                             color: AppColor.grayDark),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         );
//       }),
//     );
//   }
//
//   Widget _buildFilter() {
//     return Builder(builder: (context) {
//       return Column(
//         children: [
//           CardList(widgets: [
//             CardItem.normal(
//               title: 'Trạng thái tham gia',
//               isNavigate: true,
//               onTap: () {
//                 Navigator.of(context)
//                     .push(
//                   MaterialPageRoute(
//                     builder: (context) => ContestFilterScreen<AttendStatusEnum>(
//                       name: 'Trạng thái tham gia',
//                       initValue: attendFilter,
//                       multiCheck: true,
//                       listFilter: [
//                         [
//                           FilterData<AttendStatusEnum>(
//                             data: AttendStatusEnum.none,
//                             name: AttendStatusEnum.none.title,
//                           ),
//                           FilterData<AttendStatusEnum>(
//                             data: AttendStatusEnum.attended,
//                             name: AttendStatusEnum.attended.title,
//                           ),
//                         ],
//                       ],
//                     ),
//                   ),
//                 )
//                     .then((value) {
//                   attendFilter = value;
//                 });
//               },
//             ),
//           ]),
//           const SizedBox(
//             height: 30,
//           ),
//           CardList(widgets: [
//             CardItem.normal(
//               hasDivider: true,
//               title: 'Trạng thái đăng ký',
//               isNavigate: true,
//               onTap: () {
//                 Navigator.of(context)
//                     .push(
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         ContestFilterScreen<RegisteredStatusEnum>(
//                           name: 'Trạng thái đăng ký',
//                           multiCheck: true,
//                           initValue: registerFilter,
//                           listFilter: [
//                             [
//                               FilterData<RegisteredStatusEnum>(
//                                 data: RegisteredStatusEnum.none,
//                                 name: RegisteredStatusEnum.none.title,
//                               ),
//                               FilterData<RegisteredStatusEnum>(
//                                 data: RegisteredStatusEnum.registered,
//                                 name: RegisteredStatusEnum.registered.title,
//                               ),
//                               FilterData<RegisteredStatusEnum>(
//                                 data: RegisteredStatusEnum.closed,
//                                 name: RegisteredStatusEnum.closed.title,
//                               ),
//                             ],
//                           ],
//                         ),
//                   ),
//                 )
//                     .then((value) {
//                   registerFilter = value;
//                 });
//               },
//             ),
//             CardItem.normal(
//               title: 'Trạng thái giao dịch',
//               isNavigate: true,
//               onTap: () {
//                 Navigator.of(context)
//                     .push(
//                   MaterialPageRoute(
//                     builder: (context) =>
//                         ContestFilterScreen<TransactionStatusEnum>(
//                           name: 'Tổng giá trị giải thưởng',
//                           multiCheck: true,
//                           initValue: transactionFilter,
//                           listFilter: [
//                             [
//                               FilterData<TransactionStatusEnum>(
//                                 data: TransactionStatusEnum.none,
//                                 name: TransactionStatusEnum.none.title,
//                               ),
//                               FilterData<TransactionStatusEnum>(
//                                 data: TransactionStatusEnum.transacted,
//                                 name: TransactionStatusEnum.transacted.title,
//                               ),
//                               FilterData<TransactionStatusEnum>(
//                                 data: TransactionStatusEnum.closed,
//                                 name: TransactionStatusEnum.closed.title,
//                               ),
//                             ],
//                           ],
//                         ),
//                   ),
//                 )
//                     .then((value) {
//                   transactionFilter = value;
//                 });
//               },
//             ),
//           ]),
//           const SizedBox(
//             height: 30,
//           ),
//           CardList(widgets: [
//             CardItem.normal(
//               hasDivider: true,
//               title: 'Tổng giá trị giải thưởng',
//               isNavigate: true,
//               onTap: () {
//                 Navigator.of(context)
//                     .push(
//                   MaterialPageRoute(
//                     builder: (context) => ContestFilterScreen<SortEnum>(
//                       name: 'Tổng giá trị giải thưởng',
//                       initValue: [orderPrize],
//                       listFilter: [
//                         [
//                           FilterData<SortEnum>(
//                             data: SortEnum.desc,
//                             name: SortEnum.desc.title,
//                           ),
//                           FilterData<SortEnum>(
//                             data: SortEnum.asc,
//                             name: SortEnum.asc.title,
//                           ),
//                         ],
//                         [
//                           FilterData<SortEnum>(
//                             data: SortEnum.none,
//                             name: SortEnum.none.title,
//                           ),
//                         ]
//                       ],
//                     ),
//                   ),
//                 )
//                     .then((value) {
//                   orderPrize = value.first;
//                 });
//               },
//             ),
//             CardItem.normal(
//               title: 'Số lượng thẻ đăng ký 1 vé',
//               isNavigate: true,
//               onTap: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(
//                     builder: (context) => ContestFilterScreen<SortEnum>(
//                       name: 'Số lượng thẻ đăng ký 1 vé',
//                       initValue: [orderCard],
//                       listFilter: [
//                         [
//                           FilterData<SortEnum>(
//                             data: SortEnum.desc,
//                             name: SortEnum.desc.title,
//                           ),
//                           FilterData<SortEnum>(
//                             data: SortEnum.asc,
//                             name: SortEnum.asc.title,
//                           ),
//                         ],
//                         [
//                           FilterData<SortEnum>(
//                             data: SortEnum.none,
//                             name: SortEnum.none.title,
//                           ),
//                         ]
//                       ],
//                     )))
//                     .then((value) {
//                   orderCard = value.first;
//                 });
//               },
//             ),
//           ]),
//         ],
//       );
//     });
//   }
// }
