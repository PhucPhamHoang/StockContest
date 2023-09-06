import 'package:json_annotation/json_annotation.dart';

part 'ResponseDataListDtoModel.g.dart';

@JsonSerializable()
class ResponseDataListDtoModel {
  final dynamic data;
  final int rowTotal;
  final int pageNum;
  final int recordPerPage;
  final int pageTotal;

  ResponseDataListDtoModel(this.data, this.rowTotal, this.pageNum, this.recordPerPage, this.pageTotal);

  factory ResponseDataListDtoModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataListDtoModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDataListDtoModelToJson(this);

  @override
  String toString() {
    return 'ResponseDataListDtoModel{data: $data, rowTotal: $rowTotal, pageNum: $pageNum, recordPerPage: $recordPerPage, pageTotal: $pageTotal}';
  }
}
