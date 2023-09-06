// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DefaultResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultResponseModel _$DefaultResponseModelFromJson(
        Map<String, dynamic> json) =>
    DefaultResponseModel(
      json['result'] as String,
      json['content'],
      json['errorcode'] as String?,
    );

Map<String, dynamic> _$DefaultResponseModelToJson(
        DefaultResponseModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'content': instance.content,
      'errorcode': instance.errorcode,
    };
