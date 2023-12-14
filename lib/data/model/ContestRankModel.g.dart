// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContestRankModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContestRankModel _$ContestRankModelFromJson(Map<String, dynamic> json) =>
    ContestRankModel(
      json['ChallengeCodeId'] as String,
      json['userId'] as String,
      json['subAccountId'] as String,
      json['fullname'] as String?,
      (json['capitalSize'] as num?)?.toDouble(),
      (json['nav'] as num?)?.toDouble(),
      json['ranking'] as int?,
      (json['profitpct'] as num?)?.toDouble(),
      json['avatar'] as String?,
    );

Map<String, dynamic> _$ContestRankModelToJson(ContestRankModel instance) =>
    <String, dynamic>{
      'ChallengeCodeId': instance.challengeCodeId,
      'userId': instance.userId,
      'subAccountId': instance.subAccountId,
      'fullname': instance.fullname,
      'capitalSize': instance.capitalSize,
      'nav': instance.nav,
      'ranking': instance.ranking,
      'profitpct': instance.percent,
      'avatar': instance.avatar,
    };
