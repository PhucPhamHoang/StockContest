import 'package:json_annotation/json_annotation.dart';

enum RegisterStatusEnum {
  @JsonValue('notOpenRegist')
  notOpenRegist,
  @JsonValue('openingRegist')
  openingRegist,
  @JsonValue('endRegist')
  endRegist,
  @JsonValue('pauseRegist')
  pauseRegist,
  @JsonValue('stopRegist')
  stopRegist,
}

extension RegisterStatusEnumEx on RegisterStatusEnum {
  static RegisterStatusEnum fromValue(value) {
    for (var item in RegisterStatusEnum.values) {
      if (item.code.toString().toUpperCase() ==
          value.toString().toUpperCase()) {
        return item;
      }
    }
    return RegisterStatusEnum.notOpenRegist;
  }

  String get code {
    switch (this) {
      case RegisterStatusEnum.notOpenRegist:
        return 'notOpenRegist';
      case RegisterStatusEnum.openingRegist:
        return 'openingRegist';
      case RegisterStatusEnum.endRegist:
        return 'endRegist';
      case RegisterStatusEnum.pauseRegist:
        return 'pauseRegist';
      case RegisterStatusEnum.stopRegist:
        return 'stopRegist';
    }
  }

  String get title {
    switch (this) {
      case RegisterStatusEnum.notOpenRegist:
        return 'Sắp mở đăng ký';
      case RegisterStatusEnum.openingRegist:
        return 'Đang mở đăng ký';
      case RegisterStatusEnum.endRegist:
        return 'Đóng đăng ký';
      case RegisterStatusEnum.pauseRegist:
        return 'Tạm hoãn đăng ký';
      case RegisterStatusEnum.stopRegist:
        return 'Dừng đăng ký';
    }
  }

  int get order {
    switch (this) {
      case RegisterStatusEnum.notOpenRegist:
        return 1;
      case RegisterStatusEnum.openingRegist:
        return 2;
      case RegisterStatusEnum.endRegist:
        return 3;
      case RegisterStatusEnum.pauseRegist:
        return 4;
      case RegisterStatusEnum.stopRegist:
        return 0;
    }
  }
}

enum CompetitionStatusEnum {
  @JsonValue('notOpenTrade')
  notOpenTrade,
  @JsonValue('openingTrade')
  openingTrade,
  @JsonValue('endTrade')
  endTrade,
  @JsonValue('pauseTrade')
  pauseTrade,
  @JsonValue('stopTrade')
  stopTrade,
}

extension CompetitionStatusEnumEx on CompetitionStatusEnum {
  static CompetitionStatusEnum fromValue(value) {
    for (var item in CompetitionStatusEnum.values) {
      if (item.code.toString().toUpperCase() ==
          value.toString().toUpperCase()) {
        return item;
      }
    }
    return CompetitionStatusEnum.notOpenTrade;
  }

  String get code {
    switch (this) {
      case CompetitionStatusEnum.notOpenTrade:
        return 'notOpenTrade';
      case CompetitionStatusEnum.openingTrade:
        return 'openingTrade';
      case CompetitionStatusEnum.endTrade:
        return 'endTrade';
      case CompetitionStatusEnum.pauseTrade:
        return 'pauseTrade';
        case CompetitionStatusEnum.stopTrade:
        return 'stopTrade';
    }
  }

  String get title {
    switch (this) {
      case CompetitionStatusEnum.notOpenTrade:
        return 'Chưa giao dịch';
      case CompetitionStatusEnum.openingTrade:
        return 'Đang giao dịch';
      case CompetitionStatusEnum.endTrade:
        return 'Kết thúc';
      case CompetitionStatusEnum.pauseTrade:
        return 'Tạm hoãn';
        case CompetitionStatusEnum.stopTrade:
        return 'Dừng';
    }
  }
}
