import 'package:json_annotation/json_annotation.dart';

part 'DefaultResponseModel.g.dart';

@JsonSerializable()
class DefaultResponseModel {
  final String result;
  final dynamic content;
  final String? errorcode;

  DefaultResponseModel(this.result, this.content, this.errorcode);

  factory DefaultResponseModel.fromJson(Map<String, dynamic> json) => _$DefaultResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultResponseModelToJson(this);

  @override

  String toString() {
    return 'DefaultResponseModel{result: $result, content: $content, errorcode: $errorcode}';
  }
}
