import 'package:json_annotation/json_annotation.dart';

part 'UserNodeNameModel.g.dart';

@JsonSerializable()
class UserNodeNameModel{
  String nodeName;

  UserNodeNameModel(
      this.nodeName);

  factory UserNodeNameModel.fromJson(Map<String, dynamic> json) =>
      _$UserNodeNameModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserNodeNameModelToJson(this);
}