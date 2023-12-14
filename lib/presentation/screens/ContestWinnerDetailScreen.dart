import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_asset/contest_asset_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_category/contest_category_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_order/contest_order_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_order_history/contest_order_history_bloc.dart';
import 'package:untitled/data/model/ContestRankModel.dart';
import 'package:untitled/data/model/TableModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/data/static/enum/OrderContestType.dart';
import 'package:untitled/data/static/enum/OrderStatusEnum.dart';
import 'package:untitled/data/static/enum/OrderStockEnum.dart';
import 'package:untitled/data/static/extension/DoubleExtension.dart';
import 'package:untitled/presentation/components/AppAsset.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppConstant.dart';
import 'package:untitled/presentation/components/AppImage.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/AppTabBar.dart';
import 'package:untitled/presentation/components/AppTableComponent.dart';
import 'package:untitled/presentation/components/AppTitle.dart';
import 'package:untitled/presentation/components/AvartarCircle.dart';
import 'package:untitled/presentation/components/card/app_card.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';
import 'package:untitled/presentation/screens/ContestAchievementScreen.dart';
import 'package:untitled/presentation/screens/Contest_order_detail_screen.dart';
import 'package:untitled/presentation/screens/Contest_order_history_detail_screen.dart';
import 'package:untitled/presentation/screens/Contest_tran_detail_screen.dart';

class ContestWinnerDetailScreen extends StatefulWidget {
  final ContestRankModel contestRank;
  const ContestWinnerDetailScreen({super.key, required this.contestRank});

  @override
  State<ContestWinnerDetailScreen> createState() =>
      _ContestWinnerDetailScreenState();
}

class _ContestWinnerDetailScreenState extends State<ContestWinnerDetailScreen> {
  int currentTap = 0;

  @override
  Widget build(BuildContext context) {
    var icon = AppAsset.commonRewardIcon;
    String prize = 'Giải ${widget.contestRank.ranking}';
    if (widget.contestRank.ranking == 1) {
      icon = AppAsset.goldenRewardIcon;
      prize = 'Giải nhất';
    } else if (widget.contestRank.ranking == 2) {
      icon = AppAsset.silverRewardIcon;
      prize = 'Giải nhì';
    } else if (widget.contestRank.ranking == 3) {
      icon = AppAsset.bronzeRewardIcon;
      prize = 'Giải ba';
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          ContestAssetBloc(context.read<StockOrderRepository>())
            ..add(ContestAssetEvent.fetch(
                userid: widget.contestRank.subAccountId,
            )),
        ),
        BlocProvider(
          create: (context) =>
              ContestCategoryBloc(context.read<StockOrderRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              ContestOrderBloc(context.read<StockOrderRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              ContestOrderHistoryBloc(context.read<StockOrderRepository>()),
        ),
      ],
      child: AppLayout(
          appBar: const AppBarCustom(
              autoLeading: true, title: 'Thông tin giao dịch'),
          body: Column(children: [
            const SizedBox(
              height: AppConstant.marginContent,
            ),
            AppTitle(
              leading: 'CUỘC THI: ${widget.contestRank.challengeCodeId}',
              trailing: 'Trang cá nhân',
              isNavigate: true,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContestAchivementScreen(
                      rankModel: widget.contestRank,
                    )));
              },
            ),
            SizedBox(
              height: 30,
            ),
            AppCard(
                backgroundColor: AppColor.gray2Dark.withOpacity(0.2),
                height: 97,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    children: [
                      widget.contestRank.avatar?.isNotEmpty == true
                          ? AvatarCircle(
                        height: 75,
                        width: 75,
                        fit: null,
                        path: widget.contestRank.avatar,
                        padding: 0,
                        backgroundColor: AppColor.grayDark,
                      )
                          : AvatarCircle(
                        height: 35,
                        width: 35,
                        path: AppAsset.userDefault,
                        color: AppColor.black,
                        backgroundColor: AppColor.grayDark,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.contestRank.fullname??"",
                                    style: AppStyle.hugeMedium,
                                  ),
                                ),
                                AppImage(
                                  path: icon,
                                  height: 20,
                                  width: 20,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.contestRank.subAccountId,
                                    style: AppStyle.medianRegular,
                                  ),
                                ),
                                Text(
                                  prize,
                                  style: AppStyle.medianRegular,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '#${widget.contestRank.ranking}',
                                    style: AppStyle.smallRegular
                                        .copyWith(color: AppColor.grayDark),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: buildTabWidget()),
          ])),
    );
  }

  Widget buildTabWidget() {
    return BlocBuilder<ContestAssetBloc, ContestAssetState>(
      builder: (context, state) {
        return BlocBuilder<ContestCategoryBloc, ContestCategoryState>(
          builder: (context, state) {
            return BlocBuilder<ContestOrderHistoryBloc,
                ContestOrderHistoryState>(
              builder: (context, state) {
                return BlocBuilder<ContestOrderBloc, ContestOrderState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        buildTabBar(),
                        Expanded(
                          child: buildContentTab(
                            currentTap,
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  Widget buildTabBar() {
    return Builder(builder: (context) {
      return AppCupertinoTabBar(
          backgroundColor: AppColor.gray6Dark,
          foregroundColor: AppColor.orangeDark.withOpacity(0.47),
          widgets: [
            Center(
              child: Text(
                'Tài sản',
                style: AppStyle.normalRegular.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
            Center(
              child: Text(
                'Danh mục',
                style: AppStyle.normalRegular.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
            Center(
              child: Text(
                'Sổ lệnh',
                style: AppStyle.normalRegular.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
            Center(
              child: Text(
                'Lịch sử lệnh',
                style: AppStyle.normalRegular.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
          ],
          valueGetter: () => currentTap,
          useShadow: false,
          onTap: (index) {
            changeTab(context, index);
          },
          useSeparators: true,
          innerHorizontalPadding: 10.0,
          innerVerticalPadding: 10.0,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          curve: Curves.linearToEaseOut,
          duration: const Duration(milliseconds: 200),
          allowExpand: true,
          allowScrollable: false,
          fittedWhenScrollable: false,
          animateWhenScrollable: false,
          animateUntilScrolled: false,
          outerHorizontalPadding: 0,
          outerVerticalPadding: 0);
    });
  }

  Widget buildContentTab(int index) {
    if (index == 0) {
      return buildAsset();
    } else if (index == 1) {
      return buildCategory();
    } else if (index == 2) {
      return buildTableOrder();
    } else if (index == 3) {
      return buildTableOrderHistory();
    }
    return Container();
  }

  void changeTab(BuildContext context, int index) {
    if (index == 0) {
      context.read<ContestAssetBloc>().add(
        ContestAssetEvent.fetch(
          userid:widget.contestRank.subAccountId,
        ),
      );
    }
    if (index == 1) {
      context.read<ContestCategoryBloc>().add(
        ContestCategoryEvent.fetch(
          userid:widget.contestRank.subAccountId,
        ),
      );
    }
    if (index == 2) {
      context.read<ContestOrderBloc>().add(
        ContestOrderEvent.fetch(
          userid:widget.contestRank.subAccountId,
        ),
      );
    }
    if (index == 3) {
      context.read<ContestOrderHistoryBloc>().add(
        ContestOrderHistoryEvent.fetch(
          userid:widget.contestRank.subAccountId,
        ),
      );
    }

    currentTap = index;
  }

  Widget buildAsset() {
    return BlocBuilder<ContestAssetBloc, ContestAssetState>(
      builder: (context, state) {
        var contestAsset = state.data.contestAsset;
        if (contestAsset == null) {
          return Container();
        }
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: AppConstant.spacingDefault,
              ),
              CardList(
                widgets: [
                  CardItem.normal(
                    title: 'Vốn đầu tư',
                    value: contestAsset.capital?.toStringAsSeparator,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CardList(
                widgets: [
                  CardItem.normal(
                    title: 'Lãi/Lỗ',
                    value:
                    '${contestAsset.profit?.round().toDouble().toStringAsSeparator}',
                    valueStyle: AppStyle.largeRegular
                        .copyWith(color: contestAsset.rateProfitColor),
                    hasDivider: true,
                  ),
                  CardItem.normal(
                      title: 'Tỷ suất lợi nhuận',
                      value: '${contestAsset.profitpct}%',
                      valueStyle: AppStyle.largeRegular
                          .copyWith(color: contestAsset.rateProfitColor)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CardList(
                widgets: [
                  CardItem.normal(
                    title: 'Thứ hạng',
                    value:
                    '${widget.contestRank.ranking?.toDouble().toStringAsSeparator}',
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CardList(
                widgets: [
                  CardItem.extend(
                    title: 'NAV',
                    subtitle: 'Giá trị tài sản ròng',
                    value:
                    contestAsset.nav?.round().toDouble().toStringAsSeparator,
                    hasDivider: true,
                  ),
                  CardItem.normal(
                    title: 'Tổng tài sản',
                    value: contestAsset.asset
                        ?.round()
                        .toDouble()
                        .toStringAsSeparator,
                    hasDivider: true,
                  ),
                  CardItem.extend(
                    title: 'Chứng khoán',
                    subtitle: 'Tổng giá trị chứng khoán',
                    value: contestAsset.stockvalue
                        ?.round()
                        .toDouble()
                        .toStringAsSeparator,
                    hasDivider: true,
                  ),
                  CardItem.normal(
                    title: 'Tiền khả dụng',
                    value: contestAsset.cash
                        ?.round()
                        .toDouble()
                        .toStringAsSeparator,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CardList(
                widgets: [
                  CardItem.normal(
                    title: 'Sức mua',
                    value: contestAsset.purchasingpower
                        ?.roundToDouble()
                        .toStringAsSeparator,
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                  'Thông tin giao dịch được ghi nhận đến thời điểm kết thúc giao dịch của cuộc thi.',
                  style: AppStyle.normalRegular
                      .copyWith(color: AppColor.grayDark)),
              const SizedBox(
                height: AppConstant.spacingDefault,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildCategory() {
    var headers = [
      TableData(
        value: 'Mã',
        flex: 2,
        alignment: Alignment.centerLeft,
      ),
      TableData(
        value: 'Tổng KL',
        flex: 2,
        alignment: Alignment.centerRight,
      ),
      TableData(
        value: 'Tỷ trọng',
        flex: 2,
        alignment: Alignment.centerRight,
      ),
      TableData(
        value: '+/-(%)',
        flex: 2,
        alignment: Alignment.centerRight,
      ),
      TableData(
        value: '',
        flex: 1,
        alignment: Alignment.center,
      ),
    ];
    var grayTextStyle =
    AppStyle.largeRegular.copyWith(color: AppColor.grayDark);
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 6),
      child: BlocBuilder<ContestCategoryBloc, ContestCategoryState>(
        builder: (context, state) {
          return state.maybeMap(
              init: (state) => loadingWidget(),
              loading: (state) => loadingWidget(),
              orElse: () {
                var contestCategory = state.data.contestCategory;
                return AppTableComponent(
                    heightRow: 49,
                    headerData: headers,
                    contentData: contestCategory.isEmpty
                        ? []
                        : List.generate(contestCategory.length, (index) {
                      final item = contestCategory[index];
                      return [
                        TableData(
                            value: item.stockSymbol,
                            flex: 2,
                            alignment: Alignment.centerLeft,
                            textStyle: grayTextStyle),
                        TableData(
                            value: item.totalAmount.toStringAsSeparator,
                            flex: 2,
                            alignment: Alignment.centerRight,
                            textStyle: grayTextStyle),
                        TableData(
                            value:
                            '${item.portfoliopct.toStringAsSeparator}%',
                            flex: 2,
                            alignment: Alignment.centerRight,
                            textStyle: grayTextStyle),
                        TableData(
                            value: item.rateProfitString,
                            flex: 2,
                            alignment: Alignment.centerRight,
                            textStyle: grayTextStyle.copyWith(
                                color: item.rateProfitColor)),
                        TableData(
                          value: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ContestTransDetailScreen(
                                            contestCategory: item,
                                          )));
                            },
                            child: AppImage(
                              height: 20,
                              path: AppAsset.orderDetailIcon,
                              color: AppColor.orangeDark,
                            ),
                          ),
                          flex: 1,
                          alignment: Alignment.center,
                        ),
                      ];
                    }).toList()
                  // ..add([
                  //   TableData(
                  //       value: 'Tổng tiền mặt',
                  //       flex: 4,
                  //       alignment: Alignment.centerLeft,
                  //       textStyle: grayTextStyle),
                  //   TableData(
                  //       value: state.data.totalRate.toStringAsSeparator,
                  //       flex: 2,
                  //       alignment: Alignment.centerRight,
                  //       textStyle: grayTextStyle),
                  //   TableData(
                  //     value: '',
                  //     flex: 2,
                  //     alignment: Alignment.center,
                  //   ),
                  //   TableData(
                  //     value: InkWell(
                  //       onTap: () {
                  //         // Navigator.of(context).push(MaterialPageRoute(
                  //         //     builder: (context) => ContestTransDetailScreen(
                  //         //           contestCategory: item,
                  //         //         )));
                  //       },
                  //       child: AppImage(
                  //         height: 20,
                  //         path: AppAsset.orderDetailIcon,
                  //         color: AppColor.orangeDark,
                  //       ),
                  //     ),
                  //     flex: 1,
                  //     alignment: Alignment.center,
                  //   ),
                  // ]),
                );
              });
        },
      ),
    );
  }

  Widget buildTableOrderHistory() {
    var headers = [
      TableData(
        value: ' ',
        flex: 1,
        alignment: Alignment.centerLeft,
      ),
      TableData(
        value: 'Mã',
        flex: 2,
        alignment: Alignment.centerLeft,
      ),
      TableData(
        value: Column(children: [
          Text(
            'Giá đặt',
            style: AppStyle.largeRegular,
          ),
          Text(
            'Giá khớp',
            style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
          ),
        ]),
        flex: 2,
        alignment: Alignment.centerRight,
      ),
      TableData(
        value: Column(
          children: [
            Text(
              'KL đặt',
              style: AppStyle.largeRegular,
            ),
            Text(
              'KL khớp',
              style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
            ),
          ],
        ),
        flex: 2,
        alignment: Alignment.centerRight,
      ),
      TableData(
        value: '',
        flex: 2,
        alignment: Alignment.center,
      ),
    ];
    var grayTextStyle =
    AppStyle.largeRegular.copyWith(color: AppColor.grayDark);
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 6),
      child: BlocBuilder<ContestOrderHistoryBloc, ContestOrderHistoryState>(
        builder: (context, state) {
          return state.maybeMap(
            init: (state) => loadingWidget(),
            loading: (state) => loadingWidget(),
            orElse: () {
              var contestOrderHistories = state.data.contestOrderHistories;
              return AppTableComponent(
                headerData: headers,
                contentData: contestOrderHistories.isEmpty
                    ? []
                    : List.generate(
                  contestOrderHistories.length,
                      (index) {
                    final item = contestOrderHistories[index];
                    return [
                      TableData(
                          value: Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                color:
                                AppColor.gray2Dark.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                item.orderside.title,
                                style: AppStyle.largeRegular.copyWith(
                                  color: item.orderside.color,
                                ),
                              ),
                            ),
                          ),
                          flex: 1,
                          alignment: Alignment.centerLeft,
                          textStyle: grayTextStyle),
                      TableData(
                          value: item.stockSymbol,
                          flex: 2,
                          alignment: Alignment.centerLeft,
                          textStyle: grayTextStyle),
                      TableData(
                          value: item.avgmatchprice == null
                              ? Text(
                            item.orderprice?.toStringAsSeparator ??
                                item.ordertype.title,
                            style: AppStyle.largeRegular,
                          )
                              : Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: [
                              Text(
                                item.orderprice
                                    ?.toStringAsSeparator ??
                                    item.ordertype.title,
                                style: AppStyle.largeRegular,
                              ),
                              Text(
                                item.avgmatchprice
                                    ?.toStringAsSeparator ??
                                    '',
                                style: AppStyle.smallRegular
                                    .copyWith(
                                    color: AppColor.grayDark),
                              )
                            ],
                          ),
                          flex: 2,
                          alignment: Alignment.centerRight,
                          textStyle: grayTextStyle),
                      TableData(
                          value: item.matchquantity == null
                              ? item.orderquantity.toStringAsSeparator
                              : Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: [
                              Text(
                                item.orderquantity
                                    .toStringAsSeparator,
                                style: AppStyle.largeRegular,
                              ),
                              Text(
                                item.matchquantity
                                    ?.toStringAsSeparator ??
                                    '',
                                style: AppStyle.smallRegular
                                    .copyWith(
                                    color: AppColor.grayDark),
                              )
                            ],
                          ),
                          flex: 2,
                          alignment: Alignment.centerRight,
                          textStyle: grayTextStyle),
                      TableData(
                        value: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 16,
                              child: AppImage(
                                path: getIconStatus(item.orderStatus),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ContestOrderHistoryDetail(
                                                history: item)));
                              },
                              child: SizedBox(
                                height: 20,
                                child: AppImage(
                                  path: AppAsset.orderDetailIcon,
                                  color: AppColor.orange,
                                ),
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                        alignment: Alignment.center,
                      ),
                    ];
                  },
                ).toList(),
              );
            },
          );
        },
      ),
    );
  }

  Widget buildTableOrder() {
    var headers = [
      TableData(
        value: ' ',
        flex: 1,
        alignment: Alignment.centerLeft,
      ),
      TableData(
        value: 'Mã',
        flex: 2,
        alignment: Alignment.centerLeft,
      ),
      TableData(
        value: Column(children: [
          Text(
            'Giá đặt',
            style: AppStyle.largeRegular,
          ),
          Text(
            'Giá khớp',
            style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
          ),
        ]),
        flex: 2,
        alignment: Alignment.centerRight,
      ),
      TableData(
        value: Column(children: [
          Text(
            'KL đặt',
            style: AppStyle.largeRegular,
          ),
          Text(
            'KL khớp',
            style: AppStyle.smallRegular.copyWith(color: AppColor.grayDark),
          ),
        ]),
        flex: 2,
        alignment: Alignment.centerRight,
      ),
      TableData(
        value: '',
        flex: 2,
        alignment: Alignment.center,
      ),
    ];
    var grayTextStyle =
    AppStyle.largeRegular.copyWith(color: AppColor.grayDark);
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 25),
      child: BlocBuilder<ContestOrderBloc, ContestOrderState>(
        builder: (context, state) {
          return state.maybeMap(
              init: (state) => loadingWidget(),
              loading: (state) => loadingWidget(),
              orElse: () {
                var contestOrders = state.data.contestOrders;

                return AppTableComponent(
                  headerData: headers,
                  contentData: contestOrders.isEmpty
                      ? []
                      : List.generate(contestOrders.length, (index) {
                    final item = contestOrders[index];
                    return [
                      TableData(
                          value: Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                                color:
                                AppColor.gray2Dark.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                item.orderside.title,
                                style: AppStyle.largeRegular.copyWith(
                                  color: item.orderside.color,
                                ),
                              ),
                            ),
                          ),
                          flex: 1,
                          alignment: Alignment.centerLeft,
                          textStyle: grayTextStyle),
                      TableData(
                          value: item.stockSymbol,
                          flex: 2,
                          alignment: Alignment.centerLeft,
                          textStyle: grayTextStyle),
                      TableData(
                          value: item.avgmatchprice == null
                              ? Text(
                            item.orderprice?.toStringAsSeparator ??
                                item.ordertype.title,
                            style: AppStyle.largeRegular,
                          )
                              : Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: [
                              Text(
                                item.orderprice
                                    ?.toStringAsSeparator ??
                                    item.ordertype.title,
                                style: AppStyle.largeRegular,
                              ),
                              Text(
                                item.avgmatchprice
                                    ?.toStringAsSeparator ??
                                    '',
                                style: AppStyle.smallRegular
                                    .copyWith(
                                    color: AppColor.grayDark),
                              )
                            ],
                          ),
                          flex: 2,
                          alignment: Alignment.centerRight,
                          textStyle: grayTextStyle),
                      TableData(
                          value: item.orderquantity == null
                              ? item.orderquantity.toStringAsSeparator
                              : Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.end,
                            children: [
                              Text(
                                item.orderquantity
                                    .toStringAsSeparator,
                                style: AppStyle.largeRegular,
                              ),
                              Text(
                                item.orderquantity
                                    .toStringAsSeparator,
                                style: AppStyle.smallRegular
                                    .copyWith(
                                    color: AppColor.grayDark),
                              )
                            ],
                          ),
                          flex: 2,
                          alignment: Alignment.centerRight,
                          textStyle: grayTextStyle),
                      TableData(
                        value: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 16,
                              child: AppImage(
                                path: getIconStatus(item.orderStatus),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context
                                    .read<ContestOrderBloc>()
                                    .currentOrder = item;
                                Navigator.of(context)
                                    .push(MaterialPageRoute(
                                    builder: (_) =>
                                        ContestOrderDetail(
                                          bloc: context.read<
                                              ContestOrderBloc>(),
                                          userid: widget
                                              .contestRank.subAccountId,
                                        )))
                                    .then((value) => context
                                    .read<ContestOrderBloc>()
                                    .currentOrder = null);
                              },
                              child: SizedBox(
                                height: 20,
                                child: AppImage(
                                  path: AppAsset.orderDetailIcon,
                                  color: AppColor.orange,
                                ),
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                        alignment: Alignment.center,
                      ),
                    ];
                  }).toList(),
                );
              });
        },
      ),
    );
  }

  String getIconStatus(OrderStatusEnum type) {
    switch (type) {
      case OrderStatusEnum.matchedPart:
        return AppAsset.orderPartIcon;
      case OrderStatusEnum.matchedFull:
        return AppAsset.orderFullIcon;
      case OrderStatusEnum.waitingMatch:
        return AppAsset.orderWaitIcon;
      case OrderStatusEnum.rejected:
        return AppAsset.orderRejectIcon;

      case OrderStatusEnum.cancel:
        return AppAsset.orderCancelIcon;
      case OrderStatusEnum.sellAll:
        // TODO: Handle this case.
      case OrderStatusEnum.sellPartial:
        // TODO: Handle this case.
      case OrderStatusEnum.buyMore:
        // TODO: Handle this case.
      case OrderStatusEnum.buyNEW:
        // TODO: Handle this case.
        return "";
    }
  }

  Widget loadingWidget() {
    return const CupertinoActivityIndicator(
      radius: 25,
    );
  }
}
