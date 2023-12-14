import 'package:json_annotation/json_annotation.dart';

enum OrderStatusEnum {
  @JsonValue('PARTIALMATCHED')
  matchedPart,
  @JsonValue('FULLMATCHED')
  matchedFull,
  @JsonValue('NEW')
  waitingMatch,
  @JsonValue('REJECTED')
  rejected,
  @JsonValue('CANCELED')
  cancel,
  @JsonValue('SELLALL')
  sellAll,
  @JsonValue('SELL_PARTIAL')
  sellPartial,
  @JsonValue('BUY_MORE')
  buyMore,
  @JsonValue('BUY_NEW')
  buyNEW,
}

extension OrderStatusEnumEx on OrderStatusEnum {
  String get title {
    switch (this) {
      case OrderStatusEnum.matchedPart:
        return 'Khớp một phần';
      case OrderStatusEnum.matchedFull:
        return 'Khớp hết';
      case OrderStatusEnum.waitingMatch:
        return 'Chờ khớp';
      case OrderStatusEnum.rejected:
        return 'Từ chối';
      case OrderStatusEnum.cancel:
        return 'Đã huỷ';
      case OrderStatusEnum.sellAll:
        return 'Bán toàn bộ';
      case OrderStatusEnum.sellPartial:
        return 'Bán một phần';
      case OrderStatusEnum.buyMore:
        return 'Mua thêm';
      case OrderStatusEnum.buyNEW:
        return 'Mua mới';
    }
  }
}
