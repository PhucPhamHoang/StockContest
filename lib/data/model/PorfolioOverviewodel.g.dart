// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PorfolioOverviewodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PortfolioOverviewModel _$PortfolioOverviewModelFromJson(
        Map<String, dynamic> json) =>
    PortfolioOverviewModel(
      json['ChallengeCodeId'] as String?,
      json['subAccountId'] as String?,
      json['userid'] as String?,
      (json['capitalSize'] as num?)?.toDouble(),
      (json['asset'] as num?)?.toDouble(),
      (json['nav'] as num?)?.toDouble(),
      (json['profit'] as num?)?.toDouble(),
      (json['profitpct'] as num).toDouble(),
      (json['stockvalue'] as num?)?.toDouble(),
      (json['cash'] as num?)?.toDouble(),
      (json['purchasingpower'] as num?)?.toDouble(),
      (json['rạnking'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PortfolioOverviewModelToJson(
        PortfolioOverviewModel instance) =>
    <String, dynamic>{
      'ChallengeCodeId': instance.ChallengeCodeId,
      'subAccountId': instance.subAccountId,
      'userid': instance.userId,
      'capitalSize': instance.capital,
      'asset': instance.asset,
      'nav': instance.nav,
      'profit': instance.profit,
      'profitpct': instance.profitpct,
      'stockvalue': instance.stockvalue,
      'cash': instance.cash,
      'purchasingpower': instance.purchasingpower,
      'rạnking': instance.ranking,
    };
