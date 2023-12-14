import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/static/enum/ContestStatusEnum.dart';

part 'ContestModel.g.dart';

@JsonSerializable()
class ContestModel {
  @JsonKey(name: 'ChallengeName')
  final String ChallengeName;
  @JsonKey(name: 'ChallengeCodeId')
  final String ChallengeCodeId;
  @JsonKey(name: 'tradeState')
  final CompetitionStatusEnum tradeState;
  @JsonKey(name: 'registState', defaultValue: RegisterStatusEnum.notOpenRegist)
  final RegisterStatusEnum registState;
  @JsonKey(name: 'listNodeName')
  final List<String> listNodeName;
  @JsonKey(name: 'totalSubaccountJoin')
  final int totalSubaccountJoin;
  @JsonKey(name: 'totalUserJoin')
  final int totalUserJoin;


  ContestModel(
      this.ChallengeName,
      this.ChallengeCodeId,
      this.tradeState,
      this.registState,
      this.listNodeName,
      this.totalSubaccountJoin,
      this.totalUserJoin);

  factory ContestModel.fromJson(Map<String, dynamic> json) =>
      _$ContestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContestModelToJson(this);
}

List<dynamic> convertToListMap(Map map, String key) {
  final data = map[key];
  if (data is String) return jsonDecode(data);
  return [];
}
