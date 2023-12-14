import 'package:flutter/material.dart';
import 'package:untitled/data/model/PorfolioStockModel.dart';
import 'package:untitled/data/static/extension/DoubleExtension.dart';
import 'package:untitled/presentation/components/AppBarCustom.dart';
import 'package:untitled/presentation/components/AppConstant.dart';
import 'package:untitled/presentation/components/AppLayout.dart';
import 'package:untitled/presentation/components/AppStyle.dart';
import 'package:untitled/presentation/components/card/card_item.dart';
import 'package:untitled/presentation/components/card/card_list.dart';

class ContestTransDetailScreen extends StatelessWidget {
  final PortfolioStockModel contestCategory;
  const ContestTransDetailScreen({super.key, required this.contestCategory});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        appBar:
        AppBarCustom(autoLeading: true, title: contestCategory.stockSymbol),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: AppConstant.marginContent,
            ),
            CardList(
              widgets: [
                CardItem.normal(
                    title: 'Tỷ suất lợi nhuận',
                    value: contestCategory.rateProfitString,
                    valueStyle: AppStyle.largeRegular
                        .copyWith(color: contestCategory.rateProfitColor)),
              ],
            ),
            SizedBox(
              height: AppConstant.spacingDefault,
            ),
            CardList(
              widgets: [
                CardItem.normal(
                  title: 'Giá vốn',
                  value: contestCategory.avgcostPrice.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Giá thị trường',
                  value: contestCategory.matchPrice.toStringAsSeparator,
                ),
              ],
            ),
            SizedBox(
              height: AppConstant.spacingDefault,
            ),
            CardList(
              widgets: [
                CardItem.normal(
                  title: 'Tổng khối lượng',
                  value: contestCategory.totalAmount.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Khối lượng khả dụng',
                  value: contestCategory.avai.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Khối lượng chờ về',
                  value: contestCategory.wait.toStringAsSeparator,
                  hasDivider: true,
                ),
                CardItem.normal(
                  title: 'Tỷ trọng',
                  value: '${contestCategory.portfoliopct.toStringAsSeparator}%',
                ),
              ],
            ),
          ]),
        ));
  }
}
