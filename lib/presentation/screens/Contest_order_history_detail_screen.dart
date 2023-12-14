import 'package:flutter/material.dart';
import 'package:untitled/data/model/ExchangeOrderModel.dart';
import 'package:untitled/data/static/enum/OrderContestType.dart';
import 'package:untitled/data/static/enum/OrderStatusEnum.dart';
import 'package:untitled/data/static/enum/OrderStockEnum.dart';
import 'package:untitled/data/static/extension/DatetimeExtension.dart';
import 'package:untitled/data/static/extension/DoubleExtension.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';

class ContestOrderHistoryDetail extends StatefulWidget {
  final ExchangeOrderModel history;
  const ContestOrderHistoryDetail({super.key, required this.history});

  @override
  State<ContestOrderHistoryDetail> createState() =>
      _ContestOrderHistoryDetailState();
}

class _ContestOrderHistoryDetailState extends State<ContestOrderHistoryDetail> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
        appBar: AppBarCustom(
          autoLeading: true,
          title: widget.history.stockSymbol,
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
                  value: widget.history.orderside.text.toUpperCase(),
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Loại lệnh',
                  value: widget.history.ordertype.title,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Giá đặt',
                  value: widget.history.orderprice?.toStringAsSeparator?? widget.history.ordertype.title,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Khối lượng đặt',
                  hasDivider: true,
                  value: widget.history.orderquantity.toStringAsSeparator,
                ),
                CardItem.normal(
                  title: 'Thời gian đặt',
                  value: widget.history.orderdate.dateTimeNoSpace,
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
                  value: widget.history.orderStatus.title,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            if (widget.history.orderStatus == OrderStatusEnum.matchedFull ||
                widget.history.orderStatus == OrderStatusEnum.matchedPart)
              CardList(
                widgets: [
                  CardItem.normal(
                    title: 'Giá khớp',
                    value: widget.history.avgmatchprice?.toStringAsSeparator,
                    hasDivider: true,
                  ),
                  CardItem.normal(
                    title: 'Khối lượng khớp',
                    value: widget.history.matchquantity?.toStringAsSeparator,
                    hasDivider: true,
                  ),
                  CardItem.normal(
                    title: 'Thời gian khớp',
                    value: widget.history.matchdate?.dateTimeNoSpace,
                  ),
                ],
              ),
          ]),
        ));
  }
}
