// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ExchangeOrderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeOrderModel _$ExchangeOrderModelFromJson(Map<String, dynamic> json) =>
    ExchangeOrderModel(
      userId: json['userid'] as String,
      exchangeAccountId: json['exchangeaccountid'] as String,
      ordertype: $enumDecode(_$OrderStockEnumEnumMap, json['ordertype']),
      stockSymbol: json['stocksymbol'] as String,
      orderprice: (json['orderprice'] as num?)?.toDouble(),
      orderquantity: (json['orderquantity'] as num).toDouble(),
      orderdate: DateTime.parse(json['orderdate'] as String),
      orderStatus: $enumDecode(_$OrderStatusEnumEnumMap, json['orderstatus']),
      orderside: $enumDecode(_$OrderContestTypeEnumEnumMap, json['orderside']),
      exchangeOrderId: json['exchangeorderid'] as String,
      avgmatchprice: (json['avgmatchprice'] as num?)?.toDouble(),
      matchquantity: (json['matchquantity'] as num?)?.toDouble(),
      matchdate: json['matchdate'] == null
          ? null
          : DateTime.parse(json['matchdate'] as String),
    );

Map<String, dynamic> _$ExchangeOrderModelToJson(ExchangeOrderModel instance) =>
    <String, dynamic>{
      'userid': instance.userId,
      'exchangeaccountid': instance.exchangeAccountId,
      'ordertype': _$OrderStockEnumEnumMap[instance.ordertype]!,
      'stocksymbol': instance.stockSymbol,
      'orderprice': instance.orderprice,
      'orderquantity': instance.orderquantity,
      'orderdate': instance.orderdate.toIso8601String(),
      'orderstatus': _$OrderStatusEnumEnumMap[instance.orderStatus]!,
      'orderside': _$OrderContestTypeEnumEnumMap[instance.orderside]!,
      'exchangeorderid': instance.exchangeOrderId,
      'avgmatchprice': instance.avgmatchprice,
      'matchquantity': instance.matchquantity,
      'matchdate': instance.matchdate?.toIso8601String(),
    };

const _$OrderStockEnumEnumMap = {
  OrderStockEnum.lo: 'LO',
  OrderStockEnum.ato: 'ATO',
  OrderStockEnum.atc: 'ATC',
  OrderStockEnum.mp: 'MP',
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

const _$OrderContestTypeEnumEnumMap = {
  OrderContestTypeEnum.sell: 'SELL',
  OrderContestTypeEnum.buy: 'BUY',
};
