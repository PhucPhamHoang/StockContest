import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/businessLogic/bloc/contest_order/contest_order_bloc.dart';
import 'package:untitled/businessLogic/bloc/stock_order/stock_order_bloc.dart';
import 'package:untitled/data/model/ExchangeOrderModel.dart';
import 'package:untitled/data/repository/StockOrderRepository.dart';
import 'package:untitled/data/static/enum/OrderContestType.dart';
import 'package:untitled/data/static/enum/OrderStatusEnum.dart';
import 'package:untitled/data/static/enum/OrderStockEnum.dart';
import 'package:untitled/data/static/extension/DatetimeExtension.dart';
import 'package:untitled/data/static/extension/DoubleExtension.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppColor.dart';
import 'package:untitled/presentation/components/AppDialog.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';

class ContestOrderDetail extends StatefulWidget {
  final ContestOrderBloc bloc;
  final String userid;
  const ContestOrderDetail(
      {super.key,
        required this.bloc,
        required this.userid});

  @override
  State<ContestOrderDetail> createState() => _ContestOrderDetailState();
}

class _ContestOrderDetailState extends State<ContestOrderDetail> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: widget.bloc,
        child: BlocProvider(
          create: (context) =>
              StockOrderBloc(context.read<StockOrderRepository>()),
          child: BlocListener<StockOrderBloc, StockOrderState>(
            listener: (context, state) {
              state.maybeMap(
                  success: (state) {
                    AppDialog.showAppCupertinoDialog(
                        title: 'Huỷ lệnh thành công',
                        content: 'Hệ thống đã tiếp nhận yêu cầu',
                        defaultActionText: 'Đóng',
                        context: context);
                    context.read<ContestOrderBloc>().add(
                        ContestOrderEvent.fetch(
                          userid: widget.userid));
                  },
                  error: (state) {
                    AppDialog.showAppCupertinoDialog(
                        title: 'Không thể huỷ lệnh',
                        content:
                        'Bạn không thể huỷ lệnh trong thời gian khớp lệnh định kỳ',
                        defaultActionText: 'Đóng',
                        context: context);
                  },
                  orElse: () {});
            },
            child: BlocBuilder<ContestOrderBloc, ContestOrderState>(
              builder: (context, state) {
                var contestOrder =
                    context.read<ContestOrderBloc>().currentOrder;
                if (contestOrder != null) {
                  return AppLayout(
                      appBar: AppBarCustom(
                        autoLeading: true,
                        title: contestOrder.stockSymbol,
                      ),
                      body: SingleChildScrollView(
                        child: Column(children: [
                          const SizedBox(
                            height: 25,
                          ),
                          CardList(
                            widgets: [
                              CardItem.normal(
                                title: 'M/B',
                                value:
                                contestOrder.orderside.text.toUpperCase(),
                                hasDivider: true,
                              ),
                              CardItem.normal(
                                title: 'Loại lệnh',
                                value: contestOrder.ordertype.title,
                                hasDivider: true,
                              ),
                              CardItem.normal(
                                title: 'Giá đặt',
                                value: contestOrder
                                    .orderprice?.toStringAsSeparator ??
                                    contestOrder.ordertype.title,
                                hasDivider: true,
                              ),
                              CardItem.normal(
                                title: 'Khối lượng đặt',
                                hasDivider: true,
                                value: contestOrder
                                    .orderquantity.toStringAsSeparator,
                              ),
                              CardItem.normal(
                                title: 'Thời gian đặt',
                                value: contestOrder.orderdate.dateTimeNoSpace,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CardList(
                            widgets: [
                              CardItem.normal(
                                title: 'Trạng thái lệnh',
                                value: contestOrder.orderStatus.title,
                              ),
                            ],
                          ),
                          Builder(builder: (context) {
                            return buildStatus(contestOrder, context);
                          }),
                        ]),
                      ));
                }
                return Container();
              },
            ),
          ),
        ));
  }

  Widget buildStatus(ExchangeOrderModel contestOrder, BuildContext context) {
    switch (contestOrder.orderStatus) {
      case OrderStatusEnum.matchedPart:
        return Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              CardList(widgets: [
                CardItem.normal(
                  title: 'Giá khớp',
                  value: contestOrder.avgmatchprice?.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Khối lượng khớp',
                  value: contestOrder.matchquantity?.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Thời gian khớp',
                  value: contestOrder.matchdate?.dateTimeNoSpace,
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  cancelOrder.call(contestOrder, context);
                },
                child: CardList(
                    widgets: const [],
                    replace: SizedBox(
                      height: 61,
                      child: Center(
                        child: Text(
                          'Huỷ lệnh',
                          style: AppStyle.largeRegular.copyWith(
                            color: AppColor.redDark,
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        );
      case OrderStatusEnum.matchedFull:
        return Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              CardList(widgets: [
                CardItem.normal(
                  title: 'Giá khớp',
                  value: contestOrder.avgmatchprice?.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Khối lượng khớp',
                  value: contestOrder.matchquantity?.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Thời gian khớp',
                  value: contestOrder.matchdate?.dateTimeNoSpace,
                ),
              ]),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      case OrderStatusEnum.waitingMatch:
        return Padding(
          padding: const EdgeInsets.only(top: 30),
          child: InkWell(
            onTap: () {
              cancelOrder.call(contestOrder, context);
            },
            child: CardList(
                widgets: const [],
                replace: SizedBox(
                  height: 61,
                  child: Center(
                    child: Text(
                      'Huỷ lệnh',
                      style: AppStyle.largeRegular.copyWith(
                        color: AppColor.redDark,
                      ),
                    ),
                  ),
                )),
          ),
        );
      case OrderStatusEnum.rejected:
      case OrderStatusEnum.cancel:
      case OrderStatusEnum.sellAll:
      case OrderStatusEnum.sellPartial:
      case OrderStatusEnum.buyMore:
      case OrderStatusEnum.buyNEW:
        return Container();
    }
  }

  void cancelOrder(ExchangeOrderModel contestOrder, BuildContext context) {
    AppDialog.showAppCupertinoDialog(
        title: 'Xác nhận huỷ lệnh',
        content:
        '${contestOrder.orderside.text} ${contestOrder.stockSymbol} giá ${contestOrder.orderprice?.toStringAsSeparator} khối lượng ${contestOrder.orderquantity.toStringAsSeparator} (Lệnh ${contestOrder.ordertype.title})',
        isCancel: true,
        onPressedDefault: () {
          context.read<StockOrderBloc>().add(StockOrderEvent.cancel(
            stockSymbol: contestOrder.stockSymbol,
            ticketCode: widget.userid,
            exchangeOrderId: contestOrder.exchangeOrderId,
          ));
        },
        context: context);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
