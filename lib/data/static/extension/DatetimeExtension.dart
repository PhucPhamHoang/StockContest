import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  static const monthYearFormat = 'MM/yyyy';
  static const timeDateSlashFormat = 'HH:mm - dd/MM/yyyy';
  static const dateFormat = 'dd/MM/yyyy';
  static const timeFormat = 'HH:mm:ss';
  static const dateTimeFormat = 'dd/MM/yyyy HH:mm';
  static const dateTimeFullFormat = 'dd/MM/yyyy HH:mm:ss';
  static const dateTimeApiFormat = 'yyyy/MM/dd HH:mm:ss';
  static const dateTimeApiNonFlashFormat = 'yyyy-MM-dd HH:mm:ss';

  static const dateApiFormat = 'yyyy/MM/dd ';
  static const dateTimeSlashFormat = 'dd/MM/yyyy - HH:mm';

  String get textMonthYear => DateFormat(monthYearFormat).format(this);
  String get dateTimeSlash => DateFormat(dateTimeSlashFormat).format(this);
  String get timeDateSlash => DateFormat(timeDateSlashFormat).format(this);
  String get dateTimeNoSpace => DateFormat(dateTimeFormat).format(this);
  String get dateTimeNoSpaceFull => DateFormat(dateTimeFullFormat).format(this);

  String get dateTimeApi => DateFormat(dateTimeApiFormat).format(this);
  String get dateTimeApiNonFlash =>
      DateFormat(dateTimeApiNonFlashFormat).format(this);

  String get dateApi => DateFormat(dateApiFormat).format(this);

  String get textDate => DateFormat(dateFormat).format(this);
  String get textTime => DateFormat(timeFormat).format(this);
}
