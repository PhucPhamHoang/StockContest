// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    UserInfoModel(
      DateTime.parse(json['createddate'] as String),
      json['createduser'] as String?,
      json['email'] as String?,
      DateTime.parse(json['expiredTimePoint'] as String),
      json['firstname'] as String?,
      json['gender'] as String?,
      json['id'] as int,
      json['identifierCode'] as String?,
      json['lastmodifieddate'] as String?,
      json['lastmodifieduser'] as String?,
      json['nodesBelong'] as String?,
      json['phonenumber'] as String?,
      json['userid'] as String?,
      json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      json['address'] as String?,
      json['avatar'] as String?,
      json['lastname'] as String?,
      json['customcol'] as String?,
    );

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'createddate': instance.createddate.toIso8601String(),
      'createduser': instance.createduser,
      'email': instance.email,
      'expiredTimePoint': instance.expiredTimePoint.toIso8601String(),
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'gender': instance.gender,
      'id': instance.id,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'address': instance.address,
      'identifierCode': instance.identifierCode,
      'lastmodifieddate': instance.lastmodifieddate,
      'lastmodifieduser': instance.lastmodifieduser,
      'nodesBelong': instance.nodesBelong,
      'phonenumber': instance.phonenumber,
      'userid': instance.userid,
      'avatar': instance.avatar,
      'customcol': instance.customcol,
    };
