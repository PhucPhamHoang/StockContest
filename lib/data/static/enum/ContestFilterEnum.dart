enum SortEnum { desc, asc, none }

extension SortEnumEx on SortEnum {
  String get title {
    switch (this) {
      case SortEnum.desc:
        return 'Từ cao đến thấp';
      case SortEnum.asc:
        return 'Từ thấp đến cao';
      case SortEnum.none:
        return 'Không áp dụng';
    }
  }
}

enum AttendStatusEnum { attended, none }

enum RegisteredStatusEnum { registered, none, closed }

enum TransactionStatusEnum { transacted, none, closed }

extension AttendStatusEnumEx on AttendStatusEnum {
  String get title {
    switch (this) {
      case AttendStatusEnum.attended:
        return 'Đã tham gia';
      case AttendStatusEnum.none:
        return 'Chưa tham gia';
    }
  }
}

extension RegisteredStatusEnumEx on RegisteredStatusEnum {
  String get title {
    switch (this) {
      case RegisteredStatusEnum.registered:
        return 'Đang mở đăng ký';
      case RegisteredStatusEnum.closed:
        return 'Đóng đăng ký';
      case RegisteredStatusEnum.none:
        return 'Chưa mở đăng ký';
    }
  }
}

extension TransactionStatusEnumEx on TransactionStatusEnum {
  String get title {
    switch (this) {
      case TransactionStatusEnum.transacted:
        return 'Đang giao dịch';
      case TransactionStatusEnum.closed:
        return 'Kết thúc';
      case TransactionStatusEnum.none:
        return 'Chưa giao dịch';
    }
  }
}
