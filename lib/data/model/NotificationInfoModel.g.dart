// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NotificationInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationInfoModel _$NotificationInfoModelFromJson(
        Map<String, dynamic> json) =>
    NotificationInfoModel(
      json['id'] as int,
      DateTime.parse(json['createddate'] as String),
      json['createduser'] as String,
      DateTime.parse(json['lastmodifieddate'] as String),
      json['lastmodifieduser'] as String,
      json['contentSend'] as String,
      json['sendType'] as String,
      json['userid'] as String,
      json['isRead'] as bool,
    );

Map<String, dynamic> _$NotificationInfoModelToJson(
        NotificationInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createddate': instance.createddate.toIso8601String(),
      'createduser': instance.createduser,
      'lastmodifieddate': instance.lastmodifieddate.toIso8601String(),
      'lastmodifieduser': instance.lastmodifieduser,
      'contentSend': instance.contentSend,
      'sendType': instance.sendType,
      'userid': instance.userid,
      'isRead': instance.isRead,
    };
