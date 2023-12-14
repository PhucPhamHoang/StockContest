import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/presentation/components/AppColor.dart';

part 'PorfolioOverviewodel.g.dart';

@JsonSerializable()
class PortfolioOverviewModel {
  @JsonKey(name: 'ChallengeCodeId')
  final String? ChallengeCodeId;
  @JsonKey(name: 'subAccountId')
  final String? subAccountId;
  @JsonKey(name: 'userid')
  final String? userId;
  @JsonKey(name: 'capitalSize')
  final double? capital;
  @JsonKey(name: 'asset')
  final double? asset;
  @JsonKey(name: 'nav')
  final double? nav;
  @JsonKey(name: 'profit')
  final double? profit;
  @JsonKey(name: 'profitpct')
  final double profitpct;
  @JsonKey(name: 'stockvalue')
  final double? stockvalue;
  @JsonKey(name: 'cash')
  final double? cash;
  @JsonKey(name: 'purchasingpower')
  final double? purchasingpower;
  @JsonKey(name: 'rạnking')
  final double? ranking;


  PortfolioOverviewModel(
      this.ChallengeCodeId,
      this.subAccountId,
      this.userId,
      this.capital,
      this.asset,
      this.nav,
      this.profit,
      this.profitpct,
      this.stockvalue,
      this.cash,
      this.purchasingpower,
      this.ranking);

  factory PortfolioOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioOverviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$PortfolioOverviewModelToJson(this);

  Color get rateProfitColor {
    // if (increase != null && increase != 0) {
    //   return AppColor.greenDark;
    // } else if ((decrease != null && decrease != 0)) {
    //   return AppColor.redDark;
    // } else {
    //   return AppColor.yellowDark;
    // }
    if(profit != null){
      if (profit != null) {
        return profit! > 0
            ? AppColor.greenDark
            : (profit! < 0 ? AppColor.redDark : AppColor.yellowDark);
      } else {
        return AppColor.whiteTextDarkest;
      }
    }
    return AppColor.whiteTextDarkest;

  }
  Color get rateProfitPctColor {
    // if (increase != null && increase != 0) {
    //   return AppColor.greenDark;
    // } else if ((decrease != null && decrease != 0)) {
    //   return AppColor.redDark;
    // } else {
    //   return AppColor.yellowDark;
    // }
    if (profitpct > 0) {
      return AppColor.greenDark;
    } else if (profitpct < 0) {
      return AppColor.redDark;
    } else {
      return AppColor.yellowDark;
    }
  }
}
