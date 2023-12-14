import 'package:json_annotation/json_annotation.dart';

part 'StockInfoModel.g.dart';

@JsonSerializable()
class StockInfoModel{
  @JsonKey(name: 'id')
  double id;
  @JsonKey(name: 'stocksymbol')
  String stocksymbol;
  @JsonKey(name: 'exchange')
  String exchange;
  @JsonKey(name: 'ceiling')
  double ceiling;
  @JsonKey(name: 'floor')
  double floor;
  @JsonKey(name: 'ref')
  double ref;
  @JsonKey(name: 'matchprice')
  double matchprice;
  @JsonKey(name: 'matchvol')
  double matchvol;
  @JsonKey(name: 'openprice')
  double openprice;
  @JsonKey(name: 'openmatchvol')
  double openmatchvol;
  @JsonKey(name: 'best1bidvolume')
  double best1bidvolume;
  @JsonKey(name: 'best1offervolume')
  double best1offervolume;


  StockInfoModel(
      this.id,
      this.stocksymbol,
      this.exchange,
      this.ceiling,
      this.floor,
      this.ref,
      this.matchprice,
      this.matchvol,
      this.openprice,
      this.openmatchvol,
      this.best1bidvolume,
      this.best1offervolume);

  factory StockInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StockInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$StockInfoModelToJson(this);

}