// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StockInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockInfoModel _$StockInfoModelFromJson(Map<String, dynamic> json) =>
    StockInfoModel(
      (json['id'] as num).toDouble(),
      json['stocksymbol'] as String,
      json['exchange'] as String,
      (json['ceiling'] as num).toDouble(),
      (json['floor'] as num).toDouble(),
      (json['ref'] as num).toDouble(),
      (json['matchprice'] as num).toDouble(),
      (json['matchvol'] as num).toDouble(),
      (json['openprice'] as num).toDouble(),
      (json['openmatchvol'] as num).toDouble(),
      (json['best1bidvolume'] as num).toDouble(),
      (json['best1offervolume'] as num).toDouble(),
    );

Map<String, dynamic> _$StockInfoModelToJson(StockInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stocksymbol': instance.stocksymbol,
      'exchange': instance.exchange,
      'ceiling': instance.ceiling,
      'floor': instance.floor,
      'ref': instance.ref,
      'matchprice': instance.matchprice,
      'matchvol': instance.matchvol,
      'openprice': instance.openprice,
      'openmatchvol': instance.openmatchvol,
      'best1bidvolume': instance.best1bidvolume,
      'best1offervolume': instance.best1offervolume,
    };
