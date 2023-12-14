import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/static/enum/OrderContestType.dart';
import 'package:untitled/data/static/enum/OrderStatusEnum.dart';
import 'package:untitled/data/static/extension/DoubleExtension.dart';
import 'package:untitled/presentation/components/AppColor.dart';
part 'PorfolioStockModel.g.dart';

@JsonSerializable()
class PortfolioStockModel {
  @JsonKey(name: 'userid')
  final String userId;
  @JsonKey(name: 'depoaccountid')
  final String depoAccountId;
  @JsonKey(name: 'stocksymbol')
  final String stockSymbol;
  @JsonKey(name: 'avai')
  final double avai;
  @JsonKey(name: 'wait')
  final double wait;
  @JsonKey(name: 'hold')
  final double hold;
  @JsonKey(name: 'totalamount')
  final double totalAmount;
  @JsonKey(name: 'avgcostprice')
  final double avgcostPrice;
  @JsonKey(name: 'avgholddays')
  final double avgholdDays;
  @JsonKey(name: 'matchprice')
  final double matchPrice;
  @JsonKey(name: 'portfoliopct')
  final double portfoliopct;
  @JsonKey(name: 'profit')
  final double profit;
  @JsonKey(name: 'profitpct')
  final double profitpct;
  @JsonKey(name: 'value')
  final double? value;
  @JsonKey(name: 'status')
  final OrderStatusEnum status;

  PortfolioStockModel({
    required this.userId,
    required this.depoAccountId,
    required this.stockSymbol,
    required this.avai,
    required this.wait,
    required this.hold,
    required this.totalAmount,
    required this.avgcostPrice,
    required this.avgholdDays,
    required this.matchPrice,
    required this.portfoliopct,
    required this.profit,
    required this.profitpct,
    this.value,
    required this.status
  });

  factory PortfolioStockModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioStockModelFromJson(json);

  Map<String, dynamic> toJson() => _$PortfolioStockModelToJson(this);

  String get rateProfitString {
    // if (increase != null && increase != 0) {
    //   return '+${increase?.toStringAsSeparator ?? ''}%';
    // } else if ((decrease != null && decrease != 0)) {
    //   return '-${decrease?.toStringAsSeparator ?? ''}%';
    // } else {
    //   return '0%';
    // }
    return '${profitpct.toStringAsSeparator}%';
  }

  Color get rateProfitColor {
    // if (increase != null && increase != 0) {
    //   return AppColor.greenDark;
    // } else if ((decrease != null && decrease != 0)) {
    //   return AppColor.redDark;
    // } else {
    //   return AppColor.yellowDark;
    // }
    if (profit > 0) {
      return AppColor.greenDark;
    } else if (profit < 0) {
      return AppColor.redDark;
    } else {
      return AppColor.yellowDark;
    }
  }
}
