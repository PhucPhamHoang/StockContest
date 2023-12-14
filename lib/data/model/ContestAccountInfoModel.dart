import 'package:json_annotation/json_annotation.dart';

part 'ContestAccountInfoModel.g.dart';

@JsonSerializable()
class ContestAccountInfoModel{
  @JsonKey(name: 'ChallengeCodeId')
  final String challengeCodeId;
  @JsonKey(name: 'subAccountId')
  final List<String> subAccountId;

  ContestAccountInfoModel(this.challengeCodeId, this.subAccountId);
  factory ContestAccountInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContestAccountInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContestAccountInfoModelToJson(this);

}