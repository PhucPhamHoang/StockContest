// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:collection/collection.dart';
// import 'package:untitled/businessLogic/bloc/stockInfo/stock_info_bloc.dart';
// import 'package:untitled/data/model/TableModel.dart';
// import 'package:untitled/data/repository/StockOrderRepository.dart';
// import 'package:untitled/data/static/enum/OrderContestType.dart';
// import 'package:untitled/data/static/enum/OrderStockEnum.dart';
// import 'package:untitled/data/static/extension/DoubleExtension.dart';
// import 'package:untitled/presentation/components/AppAsset.dart';
// import 'package:untitled/presentation/components/AppBarCustom.dart';
// import 'package:untitled/presentation/components/AppButton.dart';
// import 'package:untitled/presentation/components/AppColor.dart';
// import 'package:untitled/presentation/components/AppConstant.dart';
// import 'package:untitled/presentation/components/AppDialog.dart';
// import 'package:untitled/presentation/components/AppDropDownButton.dart';
// import 'package:untitled/presentation/components/AppImage.dart';
// import 'package:untitled/presentation/components/AppLayout.dart';
// import 'package:untitled/presentation/components/AppStyle.dart';
// import 'package:untitled/presentation/components/AppTabBar.dart';
// import 'package:untitled/presentation/components/AppTableComponent.dart';
// import 'package:untitled/presentation/components/AppTitle.dart';
// import 'package:untitled/presentation/components/card/card_item.dart';
// import 'package:untitled/presentation/components/card/card_list.dart';
// import 'package:untitled/presentation/components/text_form_field/formatter/DotSeparatorFormatter.dart';
// import 'package:untitled/presentation/components/text_form_field/formatter/UpperCaseFormatter.dart';
//
// class TransactionContestScreen extends StatefulWidget {
//   const TransactionContestScreen({super.key});
//
//   @override
//   State<TransactionContestScreen> createState() =>
//       _TransactionContestScreenState();
// }
//
// class _TransactionContestScreenState extends State<TransactionContestScreen> {
//   int currentTap = 0;
//   int currentTypeOrder = 0;
//   FocusNode stockFocusNode = FocusNode();
//   TextEditingController stockController = TextEditingController();
//   TextEditingController priceController = TextEditingController();
//   TextEditingController amountController = TextEditingController();
//   GlobalKey<AppDropDownButtonState<TicketInfoModel>> ticketKey =
//       GlobalKey<AppDropDownButtonState<TicketInfoModel>>();
//   GlobalKey<AppDropDownButtonState<ContestModel>> contestKey =
//       GlobalKey<AppDropDownButtonState<ContestModel>>();
//   String? competitionCode;
//
//   @override
//   void initState() {
//     super.initState();
//
//     if (context.read<NavigationTabBloc>().competitionCode != null) {
//       competitionCode = context.read<NavigationTabBloc>().competitionCode;
//       context.read<NavigationTabBloc>().competitionCode = null;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) =>
//               StockInfoBloc(context.read<StockOrderRepository>()),
//         ),
//         BlocProvider(
//           create: (context) =>
//               StockOrderBloc(context.read<ContestOrderRepository>()),
//         ),
//         BlocProvider(
//           create: (context) => ContestBloc(context.read<ContestRepository>())
//             ..add(const ContestEvent.fetch(
//                 pageEnum: 1,
//                 listAttend: [AttendStatusEnum.attended],
//                 listTransaction: [TransactionStatusEnum.transacted])),
//         ),
//         BlocProvider(
//           create: (context) => TicketInfoBloc(context.read<TicketRepository>()),
//         ),
//         BlocProvider(
//           create: (context) =>
//               ContestAssetBloc(context.read<ContestOrderRepository>()),
//         ),
//         BlocProvider(
//           create: (context) =>
//               ContestCategoryBloc(context.read<ContestOrderRepository>()),
//         ),
//         BlocProvider(
//           create: (context) =>
//               ContestOrderBloc(context.read<ContestOrderRepository>()),
//         ),
//         BlocProvider(
//           create: (context) =>
//               ContestOrderHistoryBloc(context.read<ContestOrderRepository>()),
//         ),
//         BlocProvider(
//           create: (context) =>
//               ContestRankBloc(context.read<ContestRepository>()),
//         ),
//       ],
//       child: AppLayout(
//         appBar: const AppBarCustom(
//           title: 'Giao dịch',
//         ),
//         body: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const SizedBox(
//               height: AppConstant.marginContent,
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     children: [
//                       const AppTitle(
//                         leading: 'MÃ CUỘC THI',
//                       ),
//                       BlocBuilder<ContestBloc, ContestState>(
//                         builder: (context, state) {
//                           state.maybeMap(
//                               success: (state) {
//                                 if (state.data.listContest.isNotEmpty) {
//                                   if (competitionCode != null) {
//                                     context.read<TicketInfoBloc>().add(
//                                         TicketInfoEvent.fetch(
//                                             code: competitionCode));
//                                     var currentCompetition = state
//                                         .data.listContest
//                                         .firstWhereOrNull((element) =>
//                                             element.competitionCode ==
//                                             competitionCode);
//                                     if (currentCompetition != null) {
//                                       contestKey.currentState
//                                           ?.setValue(DropDownData(
//                                         text:
//                                             currentCompetition.competitionCode,
//                                         data: currentCompetition,
//                                       ));
//                                     }
//
//                                     competitionCode = null;
//                                   } else {
//                                     context.read<TicketInfoBloc>().add(
//                                         TicketInfoEvent.fetch(
//                                             code: state.data.listContest.first
//                                                 .competitionCode));
//                                   }
//                                 }
//                               },
//                               orElse: () {});
//                           return AppDropDownButton<ContestModel>(
//                             key: contestKey,
//                             onChange: (data) {
//                               ticketKey.currentState?.setValue(null);
//                               context.read<TicketInfoBloc>().add(
//                                   TicketInfoEvent.fetch(
//                                       code: data?.data.competitionCode));
//                               return false;
//                             },
//                             listData: state.data.listContest
//                                 .map((e) => DropDownData<ContestModel>(
//                                     text: e.competitionCode, data: e))
//                                 .toList(),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   child: Column(
//                     children: [
//                       const AppTitle(
//                         leading: 'MÃ VÉ',
//                       ),
//                       BlocBuilder<TicketInfoBloc, TicketInfoState>(
//                         builder: (context, state) {
//                           state.maybeMap(
//                               success: (state) {
//                                 changeTab(context, currentTap,
//                                     state.data.filters.firstOrNull?.ticketCode);
//                               },
//                               orElse: () {});
//                           return AppDropDownButton(
//                             key: ticketKey,
//                             listData: state.data.filters
//                                 .map((e) => DropDownData<TicketInfoModel>(
//                                     text: e.ticketCode, data: e))
//                                 .toList(),
//                             onChange: (value) {
//                               changeTab(context, currentTap, value?.text);
//                               return false;
//                             },
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: buildTabWidget(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildTabWidget() {
//     return Column(
//       children: [
//         buildTabBar(),
//         Expanded(
//           child: buildContentTab(
//             currentTap,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget buildTabBar() {
//     return Builder(builder: (context) {
//       return AppCupertinoTabBar(
//           backgroundColor: AppColor.gray6Dark,
//           foregroundColor: AppColor.orangeDark.withOpacity(0.47),
//           widgets: [
//             Center(
//               child: Text(
//                 'Đặt lệnh',
//                 style: AppStyle.normalRegular.copyWith(
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//             Center(
//               child: Text(
//                 'Tài sản',
//                 style: AppStyle.normalRegular.copyWith(
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//             Center(
//               child: Text(
//                 'Danh mục',
//                 style: AppStyle.normalRegular.copyWith(
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//             Center(
//               child: Text(
//                 'Sổ lệnh',
//                 style: AppStyle.normalRegular.copyWith(
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//             Center(
//               child: Text(
//                 'Lịch sử lệnh',
//                 style: AppStyle.normalRegular.copyWith(
//                   fontSize: 12,
//                 ),
//               ),
//             ),
//           ],
//           valueGetter: () => currentTap,
//           useShadow: false,
//           onTap: (index) {
//             changeTab(context, index);
//           },
//           useSeparators: true,
//           innerHorizontalPadding: 10.0,
//           innerVerticalPadding: 10.0,
//           borderRadius: const BorderRadius.all(Radius.circular(10.0)),
//           curve: Curves.linearToEaseOut,
//           duration: const Duration(milliseconds: 200),
//           allowExpand: true,
//           allowScrollable: false,
//           fittedWhenScrollable: false,
//           animateWhenScrollable: false,
//           animateUntilScrolled: false,
//           outerHorizontalPadding: 0,
//           outerVerticalPadding: 0);
//     });
//   }
//
//   void changeTab(BuildContext context, int index, [String? ticketCode]) {
//     if (index == 0) {
//       context.read<StockInfoBloc>().add(
//             const StockInfoEvent.reset(),
//           );
//     }
//     if (index == 1) {
//       context.read<ContestAssetBloc>().add(
//             ContestAssetEvent.fetch(
//               code: contestKey.currentState?.value?.competitionCode,
//               ticket: ticketCode ?? ticketKey.currentState?.value?.ticketCode,
//             ),
//           );
//       context.read<ContestRankBloc>().add(ContestRankEvent.fetch(
//             code: contestKey.currentState?.value?.competitionCode,
//             ticketCode: ticketCode ?? ticketKey.currentState?.value?.ticketCode,
//             isMyRank: true,
//           ));
//     }
//     if (index == 2) {
//       context.read<ContestCategoryBloc>().add(
//             ContestCategoryEvent.fetch(
//               code: contestKey.currentState?.value?.competitionCode,
//               ticket: ticketCode ?? ticketKey.currentState?.value?.ticketCode,
//             ),
//           );
//     }
//     if (index == 3) {
//       context.read<ContestOrderBloc>().add(
//             ContestOrderEvent.fetch(
//               code: contestKey.currentState?.value?.competitionCode,
//               ticket: ticketCode ?? ticketKey.currentState?.value?.ticketCode,
//             ),
//           );
//     }
//     if (index == 4) {
//       context.read<ContestOrderHistoryBloc>().add(
//             ContestOrderHistoryEvent.fetch(
//               code: contestKey.currentState?.value?.competitionCode,
//               ticket: ticketCode ?? ticketKey.currentState?.value?.ticketCode,
//             ),
//           );
//     }
//     currentTap = index;
//   }
//
//   Widget buildContentTab(int index) {
//     if (index == 0) {
//       return buildOrder();
//     } else if (index == 1) {
//       return buildAsset();
//     } else if (index == 2) {
//       return buildCategory();
//     } else if (index == 3) {
//       return buildTableOrder();
//     } else if (index == 4) {
//       return buildTableOrderHistory();
//     }
//     return Container();
//   }
//
//   Widget buildOrder() {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           const SizedBox(
//             height: AppConstant.spacingDefault,
//           ),
//           BlocBuilder<StockInfoBloc, StockInfoState>(
//             builder: (context, state) {
//               return Column(
//                 children: [
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 'Trần:',
//                                 style: AppStyle.medianRegular,
//                               ),
//                             ),
//                             Text(
//                                 state.data.stock?.ceil.toStringAsSeparator ??
//                                     '-',
//                                 style: AppStyle.medianRegular.copyWith(
//                                     color: state.data.stock != null
//                                         ? AppColor.purpleDark
//                                         : AppColor.white))
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 30,
//                       ),
//                       Expanded(
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 'Sàn:',
//                                 style: AppStyle.medianRegular,
//                               ),
//                             ),
//                             Text(
//                                 state.data.stock?.floor.toStringAsSeparator ??
//                                     '-',
//                                 style: AppStyle.medianRegular.copyWith(
//                                     color: state.data.stock != null
//                                         ? AppColor.cyanDark
//                                         : AppColor.white))
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 'Tham chiếu:',
//                                 style: AppStyle.medianRegular,
//                               ),
//                             ),
//                             Text(
//                               state.data.stock?.reference.toStringAsSeparator ??
//                                   '-',
//                               style: AppStyle.medianRegular.copyWith(
//                                   color: state.data.stock != null
//                                       ? AppColor.yellowDark
//                                       : AppColor.white),
//                             )
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 30,
//                       ),
//                       Expanded(
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 'Giá khớp:',
//                                 style: AppStyle.medianRegular,
//                               ),
//                             ),
//                             Text(
//                                 state.data.stock?.match.toStringAsSeparator ??
//                                     '-',
//                                 style: AppStyle.medianRegular)
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               );
//             },
//           ),
//           const SizedBox(
//             height: AppConstant.spacingDefault,
//           ),
//           const AppTitle(
//             leading: 'THÔNG TIN ĐẶT LỆNH',
//           ),
//           const SizedBox(
//             height: 6,
//           ),
//           Builder(builder: (context) {
//             return CardList(
//               widgets: [
//                 CardItem.textField(
//                   isSelected: false,
//                   controller: stockController,
//                   backgroundColor: AppColor.transparent,
//                   title: 'Mã chứng khoán',
//                   textAlign: TextAlign.end,
//                   hintText: 'Nhập mã',
//                   subtitle: 'Chỉ giao dịch mã thuộc sàn Hose/HNX30',
//                   hasDivider: true,
//                   focusNode: stockFocusNode,
//                   formatter: [UpperCaseTextFormatter()],
//                   onSubmit: (value) {
//                     context.read<StockInfoBloc>().add(
//                           StockInfoEvent.fetch(
//                             code: value,
//                           ),
//                         );
//                   },
//                   onUnfocus: () {
//                     if (stockController.text.isNotEmpty) {
//                       context.read<StockInfoBloc>().add(
//                             StockInfoEvent.fetch(
//                               code: stockController.text,
//                             ),
//                           );
//                     }
//                   },
//                 ),
//                 CardItem.normal(
//                   title: 'Loại lệnh',
//                   hasDivider: true,
//                   value: AppCupertinoTabBar(
//                       backgroundColor: AppColor.transparent,
//                       foregroundColor: AppColor.green,
//                       widgets: [
//                         Container(
//                             height: 26,
//                             width: 57,
//                             child: Center(
//                                 child:
//                                     Text('LO', style: AppStyle.normalRegular))),
//                         Container(
//                             height: 26,
//                             width: 57,
//                             child: Center(
//                                 child: Text('ATO',
//                                     style: AppStyle.normalRegular))),
//                         Container(
//                             height: 26,
//                             width: 57,
//                             child: Center(
//                                 child: Text('ATC',
//                                     style: AppStyle.normalRegular))),
//                       ],
//                       separatorColor: AppColor.gray2Dark.withOpacity(0.2),
//                       valueGetter: () => currentTypeOrder,
//                       useShadow: false,
//                       onTap: (index) {
//                         setState(() {
//                           currentTypeOrder = index;
//                           if (index != 0) {
//                             priceController.text = '';
//                           }
//                         });
//                       },
//                       useSeparators: true,
//                       innerHorizontalPadding: 5.0,
//                       innerVerticalPadding: 5.0,
//                       borderRadius:
//                           const BorderRadius.all(Radius.circular(10.0)),
//                       curve: Curves.linearToEaseOut,
//                       duration: const Duration(milliseconds: 200),
//                       allowExpand: false,
//                       allowScrollable: false,
//                       fittedWhenScrollable: false,
//                       animateWhenScrollable: false,
//                       animateUntilScrolled: false,
//                       outerHorizontalPadding: 0,
//                       outerVerticalPadding: 0),
//                 ),
//                 CardItem.textField(
//                   isSelected: false,
//                   backgroundColor: AppColor.transparent,
//                   title: 'Giá',
//                   hintText: 'Giá x 1000',
//                   controller: priceController,
//                   textAlign: TextAlign.end,
//                   readOnly: currentTypeOrder != 0,
//                   formatter: [DotSeperatorFormatter()],
//                   textInputType:
//                       const TextInputType.numberWithOptions(decimal: true),
//                   hasDivider: true,
//                 ),
//                 CardItem.textField(
//                   isSelected: false,
//                   backgroundColor: AppColor.transparent,
//                   controller: amountController,
//                   title: 'Khối lượng',
//                   hintText: 'Khối lượng x 1 cổ phiếu',
//                   textAlign: TextAlign.end,
//                   textInputType: TextInputType.number,
//                 ),
//               ],
//             );
//           }),
//           const SizedBox(
//             height: AppConstant.spacingDefault,
//           ),
//           Builder(builder: (context) {
//             return BlocListener<StockOrderBloc, StockOrderState>(
//               listener: (context, state) {
//                 state.maybeMap(
//                     success: (state) {
//                       AppDialog.showAppCupertinoDialog(
//                         context: context,
//                         title: 'Đặt lệnh thành công',
//                         content: 'Hệ thống đã tiếp nhận lệnh',
//                         defaultActionText: 'Đóng',
//                       );
//                       stockController.text = '';
//                       priceController.text = '';
//                       amountController.text = '';
//                     },
//                     error: (state) => AppDialog.showAppCupertinoDialog(
//                           context: context,
//                           title: 'Lệnh đặt không hợp lệ',
//                           content: state.errorMessage,
//                           defaultActionText: 'Đã hiểu',
//                         ),
//                     orElse: () => {});
//               },
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: AppButton.defaultButton(
//                         text: 'Mua',
//                         onPress: () async {
//                           final text = stockController.text;
//                           final type =
//                               OrderStockEnumEx.fromValue(currentTypeOrder);
//                           var price = priceController.text;
//                           final amount = amountController.text;
//                           if (text.isNotEmpty &&
//                               (price.isNotEmpty || type != OrderStockEnum.lo) &&
//                               amount.isNotEmpty) {
//                             if (type != OrderStockEnum.lo) {
//                               price = type.title;
//                             }
//                             await AppDialog.showAppCupertinoDialog(
//                                 context: context,
//                                 title: 'Xác nhận đặt lệnh',
//                                 isCancel: true,
//                                 content:
//                                     'Mua $text giá $price khối lượng $amount (Lệnh ${type.title})',
//                                 onPressedDefault: () {
//                                   context.read<StockOrderBloc>().add(
//                                       StockOrderEvent.buy(
//                                           code: ticketKey.currentState?.value
//                                                   ?.ticketCode ??
//                                               '',
//                                           typeOrder: OrderContestTypeEnum.buy,
//                                           symbol: text,
//                                           type: type,
//                                           amount:
//                                               DoubleExtension.parseSeparator(
//                                                   amount),
//                                           price: type == OrderStockEnum.lo
//                                               ? DoubleExtension.parseSeparator(
//                                                   price)
//                                               : null));
//                                 });
//                           } else {
//                             await AppDialog.showAppCupertinoDialog(
//                               context: context,
//                               title: 'Lệnh đặt không hợp lệ',
//                               content: 'Vui lòng nhập đủ thông tin lệnh đặt.',
//                               defaultActionText: 'Đã hiểu',
//                             );
//                           }
//                         },
//                         height: 49,
//                         borderRadius: 10,
//                         backgroundColor: AppColor.gray2Dark.withOpacity(0.2),
//                         style: AppStyle.largeRegular
//                             .copyWith(color: AppColor.greenDark)),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: AppButton.defaultButton(
//                         text: 'Bán',
//                         onPress: () async {
//                           final text = stockController.text;
//                           final type =
//                               OrderStockEnumEx.fromValue(currentTypeOrder);
//                           var price = priceController.text;
//                           final amount = amountController.text;
//                           if (text.isNotEmpty &&
//                               (price.isNotEmpty || type != OrderStockEnum.lo) &&
//                               amount.isNotEmpty) {
//                             if (type != OrderStockEnum.lo) {
//                               price = type.title;
//                             }
//                             await AppDialog.showAppCupertinoDialog(
//                               context: context,
//                               title: 'Xác nhận đặt lệnh',
//                               isCancel: true,
//                               content:
//                                   'Bán $text giá $price khối lượng $amount (Lệnh ${type.title})',
//                               onPressedDefault: () {
//                                 context.read<StockOrderBloc>().add(
//                                       StockOrderEvent.sell(
//                                           code: ticketKey.currentState?.value
//                                                   ?.ticketCode ??
//                                               '',
//                                           typeOrder: OrderContestTypeEnum.sell,
//                                           symbol: text,
//                                           type: type,
//                                           amount:
//                                               DoubleExtension.parseSeparator(
//                                             amount,
//                                           ),
//                                           price: type == OrderStockEnum.lo
//                                               ? DoubleExtension.parseSeparator(
//                                                   price)
//                                               : null),
//                                     );
//                               },
//                             );
//                           } else {
//                             await AppDialog.showAppCupertinoDialog(
//                               context: context,
//                               title: 'Lệnh đặt không hợp lệ',
//                               content: 'Vui lòng nhập đủ thông tin lệnh đặt.',
//                               defaultActionText: 'Đã hiểu',
//                             );
//                           }
//                         },
//                         height: 49,
//                         borderRadius: 10,
//                         backgroundColor: AppColor.gray2Dark.withOpacity(0.2),
//                         style: AppStyle.largeRegular
//                             .copyWith(color: AppColor.redDark)),
//                   ),
//                 ],
//               ),
//             );
//           })
//         ],
//       ),
//     );
//   }
//
//   Widget buildAsset() {
//     return BlocBuilder<ContestAssetBloc, ContestAssetState>(
//       builder: (context, state) {
//         return state.maybeMap(
//             init: (state) => loadingWidget(),
//             loading: (state) => loadingWidget(),
//             orElse: () {
//               var contestAsset = state.data.contestAsset;
//               if (contestAsset == null) {
//                 return Container();
//               }
//               return SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: AppConstant.spacingDefault,
//                     ),
//                     CardList(
//                       widgets: [
//                         CardItem.normal(
//                           title: 'Vốn đầu tư',
//                           value: contestAsset.capital.toStringAsSeparator,
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     CardList(
//                       widgets: [
//                         CardItem.normal(
//                           title: 'Lãi/Lỗ',
//                           value:
//                               '${contestAsset.profit.round().toDouble().toStringAsSeparator}',
//                           valueStyle: AppStyle.largeRegular
//                               .copyWith(color: contestAsset.rateProfitColor),
//                           hasDivider: true,
//                         ),
//                         CardItem.normal(
//                             title: 'Tỷ suất lợi nhuận',
//                             value: '${contestAsset.profitpct}%',
//                             valueStyle: AppStyle.largeRegular
//                                 .copyWith(color: contestAsset.rateProfitColor)),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     BlocBuilder<ContestRankBloc, ContestRankState>(
//                       builder: (context, state) {
//                         int rank = state.data.ranks.firstOrNull?.rank ?? 0;
//                         return CardList(
//                           widgets: [
//                             CardItem.normal(
//                               title: 'Thứ hạng',
//                               value: '${rank.toDouble().toStringAsSeparator}',
//                             )
//                           ],
//                         );
//                       },
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     CardList(
//                       widgets: [
//                         CardItem.extend(
//                           title: 'NAV',
//                           subtitle: 'Giá trị tài sản ròng',
//                           value: contestAsset.nav
//                               .round()
//                               .toDouble()
//                               .toStringAsSeparator,
//                           hasDivider: true,
//                         ),
//                         CardItem.normal(
//                           title: 'Tổng tài sản',
//                           value: contestAsset.asset
//                               .round()
//                               .toDouble()
//                               .toStringAsSeparator,
//                           hasDivider: true,
//                         ),
//                         CardItem.extend(
//                           title: 'Chứng khoán',
//                           subtitle: 'Tổng giá trị chứng khoán',
//                           value: contestAsset.stockvalue
//                               .round()
//                               .toDouble()
//                               .toStringAsSeparator,
//                           hasDivider: true,
//                         ),
//                         CardItem.normal(
//                           title: 'Tiền khả dụng',
//                           value: contestAsset.cash
//                               .round()
//                               .toDouble()
//                               .toStringAsSeparator,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     CardList(
//                       widgets: [
//                         CardItem.normal(
//                           title: 'Margin',
//                           value: contestAsset.margin.toStringAsSeparator,
//                           hasDivider: true,
//                         ),
//                         CardItem.normal(
//                           title: 'Tỷ lệ margin',
//                           value:
//                               '${contestAsset.marginpct.toStringAsSeparator}%',
//                           hasDivider: true,
//                         ),
//                         CardItem.normal(
//                           title: 'Sức mua',
//                           value: contestAsset.purchasingpower
//                               .roundToDouble()
//                               .toStringAsSeparator,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     const SizedBox(
//                       height: AppConstant.spacingDefault,
//                     ),
//                   ],
//                 ),
//               );
//             });
//       },
//     );
//   }
//
//   Widget buildCategory() {
//     var headers = [
//       TableData(
//         value: 'Mã',
//         flex: 2,
//         alignment: Alignment.centerLeft,
//       ),
//       TableData(
//         value: 'Tổng KL',
//         flex: 2,
//         alignment: Alignment.centerRight,
//       ),
//       TableData(
//         value: 'Tỷ trọng',
//         flex: 2,
//         alignment: Alignment.centerRight,
//       ),
//       TableData(
//         value: '+/-(%)',
//         flex: 2,
//         alignment: Alignment.centerRight,
//       ),
//       TableData(
//         value: '',
//         flex: 1,
//         alignment: Alignment.center,
//       ),
//     ];
//     var grayTextStyle =
//         AppStyle.largeRegular.copyWith(color: AppColor.grayDark);
//     return Padding(
//       padding: const EdgeInsets.only(top: 30, bottom: 25),
//       child: BlocBuilder<ContestCategoryBloc, ContestCategoryState>(
//         builder: (context, state) {
//           return state.maybeMap(
//               init: (state) => loadingWidget(),
//               loading: (state) => loadingWidget(),
//               orElse: () {
//                 var contestCategory = state.data.contestCategory;
//
//                 return AppTableComponent(
//                   heightRow: 49,
//                   headerData: headers,
//                   contentData: contestCategory.isEmpty
//                       ? []
//                       : (List.generate(contestCategory.length, (index) {
//                           final item = contestCategory[index];
//                           return [
//                             TableData(
//                                 value: item.stockSymbol,
//                                 flex: 2,
//                                 alignment: Alignment.centerLeft,
//                                 textStyle: grayTextStyle),
//                             TableData(
//                                 value: item.totalAmount.toStringAsSeparator,
//                                 flex: 2,
//                                 alignment: Alignment.centerRight,
//                                 textStyle: grayTextStyle),
//                             TableData(
//                                 value:
//                                     '${item.portfoliopct.toStringAsSeparator}%',
//                                 flex: 2,
//                                 alignment: Alignment.centerRight,
//                                 textStyle: grayTextStyle),
//                             TableData(
//                                 value: item.rateProfitString,
//                                 flex: 2,
//                                 alignment: Alignment.centerRight,
//                                 textStyle: grayTextStyle.copyWith(
//                                     color: item.rateProfitColor)),
//                             TableData(
//                               value: InkWell(
//                                 onTap: () {
//                                   Navigator.of(context).push(MaterialPageRoute(
//                                       builder: (context) =>
//                                           ContestTransDetailScreen(
//                                             contestCategory: item,
//                                           )));
//                                 },
//                                 child: AppImage(
//                                   height: 20,
//                                   path: AppAsset.orderDetailIcon,
//                                   color: AppColor.orangeDark,
//                                 ),
//                               ),
//                               flex: 1,
//                               alignment: Alignment.center,
//                             ),
//                           ];
//                         }).toList()
//                       // ..add([
//                       //   TableData(
//                       //       value: 'Tổng tiền mặt',
//                       //       flex: 4,
//                       //       alignment: Alignment.centerLeft,
//                       //       textStyle: grayTextStyle),
//                       //   TableData(
//                       //       value:
//                       //           '${state.data.totalRate.toStringAsSeparator}%',
//                       //       flex: 2,
//                       //       alignment: Alignment.centerRight,
//                       //       textStyle: grayTextStyle),
//                       //   TableData(
//                       //     value: '',
//                       //     flex: 2,
//                       //     alignment: Alignment.center,
//                       //   ),
//                       //   TableData(
//                       //     value: InkWell(
//                       //         onTap: () {
//                       //           // Navigator.of(context).push(MaterialPageRoute(
//                       //           //     builder: (context) => ContestTransDetailScreen(
//                       //           //           contestCategory: item,
//                       //           //         )));
//                       //         },
//                       //         child: Container()
//                       //         // AppImage(
//                       //         //   height: 20,
//                       //         //   path: AppAsset.orderDetailIcon,
//                       //         //   color: AppColor.orangeDark,
//                       //         // ),
//                       //         ),
//                       //     flex: 1,
//                       //     alignment: Alignment.center,
//                       //   ),
//                       // ])
//                       ),
//                 );
//               });
//         },
//       ),
//     );
//   }
//
//   Widget buildTableOrder() {
//     var headers = [
//       TableData(
//         value: ' ',
//         flex: 1,
//         alignment: Alignment.centerLeft,
//       ),
//       TableData(
//         value: 'Mã',
//         flex: 2,
//         alignment: Alignment.centerLeft,
//       ),
//       TableData(
//         value: Column(children: [
//           Text(
//             'Giá đặt',
//             style: AppStyle.largeRegular,
//           ),
//           Text(
//             'Giá khớp',
//             style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
//           ),
//         ]),
//         flex: 2,
//         alignment: Alignment.centerRight,
//       ),
//       TableData(
//         value: Column(children: [
//           Text(
//             'KL đặt',
//             style: AppStyle.largeRegular,
//           ),
//           Text(
//             'KL khớp',
//             style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
//           ),
//         ]),
//         flex: 2,
//         alignment: Alignment.centerRight,
//       ),
//       TableData(
//         value: '',
//         flex: 2,
//         alignment: Alignment.center,
//       ),
//     ];
//     var grayTextStyle =
//         AppStyle.largeRegular.copyWith(color: AppColor.grayDark);
//     return Padding(
//       padding: const EdgeInsets.only(top: 30, bottom: 25),
//       child: BlocBuilder<ContestOrderBloc, ContestOrderState>(
//         builder: (context, state) {
//           return state.maybeMap(
//               init: (state) => loadingWidget(),
//               loading: (state) => loadingWidget(),
//               orElse: () {
//                 var contestOrders = state.data.contestOrders;
//
//                 return AppTableComponent(
//                   headerData: headers,
//                   contentData: contestOrders.isEmpty
//                       ? []
//                       : List.generate(contestOrders.length, (index) {
//                           final item = contestOrders[index];
//                           return [
//                             TableData(
//                                 value: Container(
//                                   height: 26,
//                                   width: 26,
//                                   decoration: BoxDecoration(
//                                       color:
//                                           AppColor.gray2Dark.withOpacity(0.2),
//                                       borderRadius: BorderRadius.circular(5)),
//                                   child: Center(
//                                     child: Text(
//                                       item.orderside.title,
//                                       style: AppStyle.largeRegular.copyWith(
//                                         color: item.orderside.color,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 flex: 1,
//                                 alignment: Alignment.centerLeft,
//                                 textStyle: grayTextStyle),
//                             TableData(
//                                 value: item.stockSymbol,
//                                 flex: 2,
//                                 alignment: Alignment.centerLeft,
//                                 textStyle: grayTextStyle),
//                             TableData(
//                                 value: item.avgmatchprice == null
//                                     ? Text(
//                                         item.orderprice?.toStringAsSeparator ??
//                                             item.ordertype.title,
//                                         style: AppStyle.largeRegular,
//                                       )
//                                     : Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.end,
//                                         children: [
//                                           Text(
//                                             item.orderprice
//                                                     ?.toStringAsSeparator ??
//                                                 item.ordertype.title,
//                                             style: AppStyle.largeRegular,
//                                           ),
//                                           Text(
//                                             item.avgmatchprice
//                                                     ?.toStringAsSeparator ??
//                                                 '',
//                                             style: AppStyle.smallRegular
//                                                 .copyWith(
//                                                     color: AppColor.grayDark),
//                                           )
//                                         ],
//                                       ),
//                                 flex: 2,
//                                 alignment: Alignment.centerRight,
//                                 textStyle: grayTextStyle),
//                             TableData(
//                                 value: item.orderquantity == null
//                                     ? item.orderquantity.toStringAsSeparator
//                                     : Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.end,
//                                         children: [
//                                           Text(
//                                             item.orderquantity
//                                                 .toStringAsSeparator,
//                                             style: AppStyle.largeRegular,
//                                           ),
//                                           Text(
//                                             item.orderquantity
//                                                 .toStringAsSeparator,
//                                             style: AppStyle.smallRegular
//                                                 .copyWith(
//                                                     color: AppColor.grayDark),
//                                           )
//                                         ],
//                                       ),
//                                 flex: 2,
//                                 alignment: Alignment.centerRight,
//                                 textStyle: grayTextStyle),
//                             TableData(
//                               value: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   SizedBox(
//                                     height: 16,
//                                     child: AppImage(
//                                       path: getIconStatus(item.orderStatus),
//                                     ),
//                                   ),
//                                   InkWell(
//                                     onTap: () {
//                                       context
//                                           .read<ContestOrderBloc>()
//                                           .currentOrder = item;
//                                       Navigator.of(context)
//                                           .push(MaterialPageRoute(
//                                               builder: (_) =>
//                                                   ContestOrderDetail(
//                                                     bloc: context.read<
//                                                         ContestOrderBloc>(),
//                                                     ticketCode: ticketKey
//                                                             .currentState
//                                                             ?.value
//                                                             ?.ticketCode ??
//                                                         '',
//                                                     competitionCode: contestKey
//                                                             .currentState
//                                                             ?.value
//                                                             ?.competitionCode ??
//                                                         '',
//                                                   )))
//                                           .then((value) => context
//                                               .read<ContestOrderBloc>()
//                                               .currentOrder = null);
//                                     },
//                                     child: SizedBox(
//                                       height: 20,
//                                       child: AppImage(
//                                         path: AppAsset.orderDetailIcon,
//                                         color: AppColor.orange,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               flex: 2,
//                               alignment: Alignment.center,
//                             ),
//                           ];
//                         }).toList(),
//                 );
//               });
//         },
//       ),
//     );
//   }
//
//   Widget buildTableOrderHistory() {
//     var headers = [
//       TableData(
//         value: ' ',
//         flex: 1,
//         alignment: Alignment.centerLeft,
//       ),
//       TableData(
//         value: 'Mã',
//         flex: 2,
//         alignment: Alignment.centerLeft,
//       ),
//       TableData(
//         value: Column(children: [
//           Text(
//             'Giá đặt',
//             style: AppStyle.largeRegular,
//           ),
//           Text(
//             'Giá khớp',
//             style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
//           ),
//         ]),
//         flex: 2,
//         alignment: Alignment.centerRight,
//       ),
//       TableData(
//         value: Column(children: [
//           Text(
//             'KL đặt',
//             style: AppStyle.largeRegular,
//           ),
//           Text(
//             'KL khớp',
//             style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
//           ),
//         ]),
//         flex: 2,
//         alignment: Alignment.centerRight,
//       ),
//       TableData(
//         value: '',
//         flex: 2,
//         alignment: Alignment.center,
//       ),
//     ];
//     var grayTextStyle =
//         AppStyle.largeRegular.copyWith(color: AppColor.grayDark);
//     return Padding(
//       padding: const EdgeInsets.only(top: 30, bottom: 25),
//       child: BlocBuilder<ContestOrderHistoryBloc, ContestOrderHistoryState>(
//         builder: (context, state) {
//           return state.maybeMap(
//               init: (state) => loadingWidget(),
//               loading: (state) => loadingWidget(),
//               orElse: () {
//                 var contestOrderHistories = state.data.contestOrderHistories;
//
//                 return AppTableComponent(
//                   headerData: headers,
//                   contentData: contestOrderHistories.isEmpty
//                       ? []
//                       : List.generate(
//                           contestOrderHistories.length,
//                           (index) {
//                             final item = contestOrderHistories[index];
//                             return [
//                               TableData(
//                                   value: Container(
//                                     height: 26,
//                                     width: 26,
//                                     decoration: BoxDecoration(
//                                         color:
//                                             AppColor.gray2Dark.withOpacity(0.2),
//                                         borderRadius: BorderRadius.circular(5)),
//                                     child: Center(
//                                       child: Text(
//                                         item.orderside.title,
//                                         style: AppStyle.largeRegular.copyWith(
//                                           color: item.orderside.color,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   flex: 1,
//                                   alignment: Alignment.centerLeft,
//                                   textStyle: grayTextStyle),
//                               TableData(
//                                   value: item.stockSymbol,
//                                   flex: 2,
//                                   alignment: Alignment.centerLeft,
//                                   textStyle: grayTextStyle),
//                               TableData(
//                                   value: item.avgmatchprice == null
//                                       ? Text(
//                                           item.orderprice
//                                                   ?.toStringAsSeparator ??
//                                               item.ordertype.title,
//                                           style: AppStyle.largeRegular,
//                                         )
//                                       : Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.end,
//                                           children: [
//                                             Text(
//                                               item.orderprice
//                                                       ?.toStringAsSeparator ??
//                                                   item.ordertype.title,
//                                               style: AppStyle.largeRegular,
//                                             ),
//                                             Text(
//                                               item.avgmatchprice
//                                                       ?.toStringAsSeparator ??
//                                                   '',
//                                               style: AppStyle.smallRegular
//                                                   .copyWith(
//                                                       color: AppColor.grayDark),
//                                             )
//                                           ],
//                                         ),
//                                   flex: 2,
//                                   alignment: Alignment.centerRight,
//                                   textStyle: grayTextStyle),
//                               TableData(
//                                   value: item.orderquantity == null
//                                       ? item.orderquantity.toStringAsSeparator
//                                       : Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.end,
//                                           children: [
//                                             Text(
//                                               item.orderquantity
//                                                   .toStringAsSeparator,
//                                               style: AppStyle.largeRegular,
//                                             ),
//                                             Text(
//                                               item.orderquantity
//                                                   .toStringAsSeparator,
//                                               style: AppStyle.smallRegular
//                                                   .copyWith(
//                                                       color: AppColor.grayDark),
//                                             )
//                                           ],
//                                         ),
//                                   flex: 2,
//                                   alignment: Alignment.centerRight,
//                                   textStyle: grayTextStyle),
//                               TableData(
//                                 value: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     SizedBox(
//                                       height: 16,
//                                       child: AppImage(
//                                         path: getIconStatus(item.orderStatus),
//                                       ),
//                                     ),
//                                     InkWell(
//                                       onTap: () {
//                                         Navigator.of(context).push(
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     ContestOrderHistoryDetail(
//                                                         history: item)));
//                                       },
//                                       child: SizedBox(
//                                         height: 20,
//                                         child: AppImage(
//                                           path: AppAsset.orderDetailIcon,
//                                           color: AppColor.orange,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 flex: 2,
//                                 alignment: Alignment.center,
//                               ),
//                             ];
//                           },
//                         ).toList(),
//                 );
//               });
//         },
//       ),
//     );
//   }
//
//   String getIconStatus(OrderStatusEnum type) {
//     switch (type) {
//       case OrderStatusEnum.matchedPart:
//         return AppAsset.orderPartIcon;
//       case OrderStatusEnum.matchedFull:
//         return AppAsset.orderFullIcon;
//       case OrderStatusEnum.waitingMatch:
//         return AppAsset.orderWaitIcon;
//       case OrderStatusEnum.rejected:
//         return AppAsset.orderRejectIcon;
//       case OrderStatusEnum.cancel:
//         return AppAsset.orderCancelIcon;
//     }
//   }
//
//   Widget loadingWidget() {
//     return const CupertinoActivityIndicator(
//       radius: 25,
//     );
//   }
// }
