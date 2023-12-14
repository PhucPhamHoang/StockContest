import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'NotificationInfoModel.g.dart';

@JsonSerializable()
class NotificationInfoModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'createddate',)
  DateTime createddate;
  String createduser;
  @JsonKey(name: 'lastmodifieddate',)
  DateTime lastmodifieddate;
  @JsonKey(name: 'lastmodifieduser',)
  String lastmodifieduser;
  @JsonKey(name: 'contentSend',)
  String contentSend;
  @JsonKey(name: 'sendType',)
  String sendType;
  @JsonKey(name: 'userid',)
  String userid;
  @JsonKey(name: 'isRead',)
  bool isRead;


  NotificationInfoModel(
      this.id,
      this.createddate,
      this.createduser,
      this.lastmodifieddate,
      this.lastmodifieduser,
      this.contentSend,
      this.sendType,
      this.userid,
      this.isRead);

  factory NotificationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationInfoModelToJson(this);


  @override
  String toString() {
    return 'NotificationModel{id: $id, createddate: $createddate, createduser: $createduser, lastmodifieddate: $lastmodifieddate, lastmodifieduser: $lastmodifieduser, contentSend: $contentSend, sendType: $sendType, userid: $userid, isRead: $isRead}';
  }

  static DateTime _fromJson(String value) => DateFormat('dd-MM-yyyy HH:mm').parse(value);

  static String _toJson(DateTime value) => DateFormat('dd-MM-yyyy HH:mm').format(value);
}
