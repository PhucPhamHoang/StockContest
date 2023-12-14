import 'package:json_annotation/json_annotation.dart';

part 'ContestRankModel.g.dart';

@JsonSerializable()
class ContestRankModel {
  @JsonKey(name: 'ChallengeCodeId')
  final String challengeCodeId;
  @JsonKey(name: 'userId')
  final String userId;
  @JsonKey(name: 'subAccountId')
  final String subAccountId;
  @JsonKey(name: 'fullname')
  final String? fullname;
  @JsonKey(name: 'capitalSize')
  final double? capitalSize;
  @JsonKey(name: 'nav')
  final double? nav;
  @JsonKey(name: 'ranking')
  final int? ranking;
  @JsonKey(name: 'profitpct')
  final double? percent;
  final String? avatar;


  ContestRankModel(this.challengeCodeId, this.userId, this.subAccountId,
      this.fullname, this.capitalSize, this.nav, this.ranking, this.percent, this.avatar);

  factory ContestRankModel.fromJson(Map<String, dynamic> json) =>
      _$ContestRankModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContestRankModelToJson(this);
}
