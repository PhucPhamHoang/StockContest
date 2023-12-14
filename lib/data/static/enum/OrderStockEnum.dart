import 'package:json_annotation/json_annotation.dart';

enum OrderStockEnum {
  @JsonValue('LO')
  lo,
  @JsonValue('ATO')
  ato,
  @JsonValue('ATC')
  atc,
  @JsonValue('MP')
  mp

}

extension OrderStockEnumEx on OrderStockEnum {
  static OrderStockEnum fromValue(value) {
    for (var item in OrderStockEnum.values) {
      if (item.indexType.toString().toUpperCase() ==
          value.toString().toUpperCase()) {
        return item;
      }
    }
    return OrderStockEnum.lo;
  }

  int get indexType {
    switch (this) {
      case OrderStockEnum.lo:
        return 0;
      case OrderStockEnum.ato:
        return 1;
      case OrderStockEnum.atc:
        return 2;
      case OrderStockEnum.mp:
        return 3;
    }
  }

  String get title {
    switch (this) {
      case OrderStockEnum.lo:
        return 'LO';
      case OrderStockEnum.ato:
        return 'ATO';
      case OrderStockEnum.atc:
        return 'ATC';
      case OrderStockEnum.mp:
        return 'MP';
    }
  }
}
