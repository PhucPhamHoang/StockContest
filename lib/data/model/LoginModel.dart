import 'package:json_annotation/json_annotation.dart';

part 'LoginModel.g.dart';

@JsonSerializable()
class LoginModel{
  String phoneNumber;
  String password;

  LoginModel(this.phoneNumber, this.password);

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);


  @override
  String toString() {
    return 'LoginModel{phoneNumber: $phoneNumber, password: $password}';
  }
}