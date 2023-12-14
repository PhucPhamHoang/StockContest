import 'package:json_annotation/json_annotation.dart';

part 'UserInfoModel.g.dart';

@JsonSerializable()
class UserInfoModel{
  @JsonKey(name: 'createddate')
  DateTime createddate;
  @JsonKey(name: 'createduser')
  final String? createduser;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'expiredTimePoint')
  final DateTime expiredTimePoint;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'gender')
  final String? gender;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'dateOfBirth')
  final DateTime? dateOfBirth;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'identifierCode')
  final String? identifierCode;
  @JsonKey(name: 'lastmodifieddate')
  final String? lastmodifieddate;
  @JsonKey(name: 'lastmodifieduser')
  final String? lastmodifieduser;
  @JsonKey(name: 'nodesBelong')
  final String? nodesBelong;
  @JsonKey(name: 'phonenumber')
  final String? phonenumber;
  @JsonKey(name: 'userid')
  final String? userid;
  @JsonKey(name: 'avatar')
  final String? avatar;
  @JsonKey(name: 'customcol')
  final String? customcol;

  UserInfoModel(
      this.createddate,
      this.createduser,
      this.email,
      this.expiredTimePoint,
      this.firstname,
      this.gender,
      this.id,
      this.identifierCode,
      this.lastmodifieddate,
      this.lastmodifieduser,
      this.nodesBelong,
      this.phonenumber,
      this.userid,
      this.dateOfBirth,
      this.address,
      this.avatar, this.lastname, this.customcol);

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);
}