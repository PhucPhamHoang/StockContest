// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContestAccountInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContestAccountInfoModel _$ContestAccountInfoModelFromJson(
        Map<String, dynamic> json) =>
    ContestAccountInfoModel(
      json['ChallengeCodeId'] as String,
      (json['subAccountId'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ContestAccountInfoModelToJson(
        ContestAccountInfoModel instance) =>
    <String, dynamic>{
      'ChallengeCodeId': instance.challengeCodeId,
      'subAccountId': instance.subAccountId,
    };
