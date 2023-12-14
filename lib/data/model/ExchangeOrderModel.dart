import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/static/enum/OrderContestType.dart';
import 'package:untitled/data/static/enum/OrderStatusEnum.dart';
import 'package:untitled/data/static/enum/OrderStockEnum.dart';
part 'ExchangeOrderModel.g.dart';

@JsonSerializable()
class ExchangeOrderModel {
  @JsonKey(name: 'userid')
  final String userId;
  @JsonKey(name: 'exchangeaccountid')
  final String exchangeAccountId;
  @JsonKey(name: 'ordertype')
  final OrderStockEnum ordertype;
  @JsonKey(name: 'stocksymbol')
  final String stockSymbol;
  @JsonKey(name: 'orderprice')
  final double? orderprice;
  @JsonKey(name: 'orderquantity')
  final double orderquantity;
  @JsonKey(name: 'orderdate')
  final DateTime orderdate;
  @JsonKey(name: 'orderstatus')
  final OrderStatusEnum orderStatus;
  @JsonKey(name: 'orderside')
  final OrderContestTypeEnum orderside;
  @JsonKey(name: 'exchangeorderid')
  final String exchangeOrderId;
  @JsonKey(name: 'avgmatchprice')
  final double? avgmatchprice;
  @JsonKey(name: 'matchquantity')
  final double? matchquantity;
  @JsonKey(name: 'matchdate')
  final DateTime? matchdate;

  ExchangeOrderModel({
    required this.userId,
    required this.exchangeAccountId,
    required this.ordertype,
    required this.stockSymbol,
    required this.orderprice,
    required this.orderquantity,
    required this.orderdate,
    required this.orderStatus,
    required this.orderside,
    required this.exchangeOrderId,
    required this.avgmatchprice,
    required this.matchquantity,
    required this.matchdate,
  });

  factory ExchangeOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeOrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeOrderModelToJson(this);
}
