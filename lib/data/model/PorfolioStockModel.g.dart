// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PorfolioStockModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PortfolioStockModel _$PortfolioStockModelFromJson(Map<String, dynamic> json) =>
    PortfolioStockModel(
      userId: json['userid'] as String,
      depoAccountId: json['depoaccountid'] as String,
      stockSymbol: json['stocksymbol'] as String,
      avai: (json['avai'] as num).toDouble(),
      wait: (json['wait'] as num).toDouble(),
      hold: (json['hold'] as num).toDouble(),
      totalAmount: (json['totalamount'] as num).toDouble(),
      avgcostPrice: (json['avgcostprice'] as num).toDouble(),
      avgholdDays: (json['avgholddays'] as num).toDouble(),
      matchPrice: (json['matchprice'] as num).toDouble(),
      portfoliopct: (json['portfoliopct'] as num).toDouble(),
      profit: (json['profit'] as num).toDouble(),
      profitpct: (json['profitpct'] as num).toDouble(),
      value: (json['value'] as num?)?.toDouble(),
      status: $enumDecode(_$OrderStatusEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$PortfolioStockModelToJson(
        PortfolioStockModel instance) =>
    <String, dynamic>{
      'userid': instance.userId,
      'depoaccountid': instance.depoAccountId,
      'stocksymbol': instance.stockSymbol,
      'avai': instance.avai,
      'wait': instance.wait,
      'hold': instance.hold,
      'totalamount': instance.totalAmount,
      'avgcostprice': instance.avgcostPrice,
      'avgholddays': instance.avgholdDays,
      'matchprice': instance.matchPrice,
      'portfoliopct': instance.portfoliopct,
      'profit': instance.profit,
      'profitpct': instance.profitpct,
      'value': instance.value,
      'status': _$OrderStatusEnumEnumMap[instance.status]!,
    };

const _$OrderStatusEnumEnumMap = {
  OrderStatusEnum.matchedPart: 'PARTIALMATCHED',
  OrderStatusEnum.matchedFull: 'FULLMATCHED',
  OrderStatusEnum.waitingMatch: 'NEW',
  OrderStatusEnum.rejected: 'REJECTED',
  OrderStatusEnum.cancel: 'CANCELED',
  OrderStatusEnum.sellAll: 'SELLALL',
  OrderStatusEnum.sellPartial: 'SELL_PARTIAL',
  OrderStatusEnum.buyMore: 'BUY_MORE',
  OrderStatusEnum.buyNEW: 'BUY_NEW',
};
