import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/presentation/components/AppColor.dart';

enum OrderContestTypeEnum {
  @JsonValue('SELL')
  sell,
  @JsonValue('BUY')
  buy,
}

extension OrderContestTypeEnumEx on OrderContestTypeEnum {
  String get title {
    switch (this) {
      case OrderContestTypeEnum.sell:
        return 'B';
      case OrderContestTypeEnum.buy:
        return 'M';
    }
  }

  Color get color {
    switch (this) {
      case OrderContestTypeEnum.sell:
        return AppColor.redDark;
      case OrderContestTypeEnum.buy:
        return AppColor.greenDark;
    }
  }

  String get text {
    switch (this) {
      case OrderContestTypeEnum.sell:
        return 'Bán';
      case OrderContestTypeEnum.buy:
        return 'Mua';
    }
  }

  String get code {
    switch (this) {
      case OrderContestTypeEnum.sell:
        return 'S';
      case OrderContestTypeEnum.buy:
        return 'B';
    }
  }
}
