// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContestModel _$ContestModelFromJson(Map<String, dynamic> json) => ContestModel(
      json['ChallengeName'] as String,
      json['ChallengeCodeId'] as String,
      $enumDecode(_$CompetitionStatusEnumEnumMap, json['tradeState']),
      $enumDecodeNullable(_$RegisterStatusEnumEnumMap, json['registState']) ??
          RegisterStatusEnum.notOpenRegist,
      (json['listNodeName'] as List<dynamic>).map((e) => e as String).toList(),
      json['totalSubaccountJoin'] as int,
      json['totalUserJoin'] as int,
    );

Map<String, dynamic> _$ContestModelToJson(ContestModel instance) =>
    <String, dynamic>{
      'ChallengeName': instance.ChallengeName,
      'ChallengeCodeId': instance.ChallengeCodeId,
      'tradeState': _$CompetitionStatusEnumEnumMap[instance.tradeState]!,
      'registState': _$RegisterStatusEnumEnumMap[instance.registState]!,
      'listNodeName': instance.listNodeName,
      'totalSubaccountJoin': instance.totalSubaccountJoin,
      'totalUserJoin': instance.totalUserJoin,
    };

const _$CompetitionStatusEnumEnumMap = {
  CompetitionStatusEnum.notOpenTrade: 'notOpenTrade',
  CompetitionStatusEnum.openingTrade: 'openingTrade',
  CompetitionStatusEnum.endTrade: 'endTrade',
  CompetitionStatusEnum.pauseTrade: 'pauseTrade',
  CompetitionStatusEnum.stopTrade: 'stopTrade',
};

const _$RegisterStatusEnumEnumMap = {
  RegisterStatusEnum.notOpenRegist: 'notOpenRegist',
  RegisterStatusEnum.openingRegist: 'openingRegist',
  RegisterStatusEnum.endRegist: 'endRegist',
  RegisterStatusEnum.pauseRegist: 'pauseRegist',
  RegisterStatusEnum.stopRegist: 'stopRegist',
};
