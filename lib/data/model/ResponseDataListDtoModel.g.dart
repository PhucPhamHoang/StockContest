// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ResponseDataListDtoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseDataListDtoModel _$ResponseDataListDtoModelFromJson(
        Map<String, dynamic> json) =>
    ResponseDataListDtoModel(
      json['data'],
      json['rowTotal'] as int,
      json['pageNum'] as int,
      json['recordPerPage'] as int,
      json['pageTotal'] as int,
    );

Map<String, dynamic> _$ResponseDataListDtoModelToJson(
        ResponseDataListDtoModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'rowTotal': instance.rowTotal,
      'pageNum': instance.pageNum,
      'recordPerPage': instance.recordPerPage,
      'pageTotal': instance.pageTotal,
    };
