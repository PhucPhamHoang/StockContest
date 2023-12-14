import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String get toStringAsSeparator {
    String returnString = '';

    String numberStr = NumberFormat('#,##0.00', 'en_US').format(this);
    if (numberStr.split('.').last == '00') {
      returnString = numberStr.split('.').first;
    } else if (numberStr.endsWith('0')) {
      returnString = numberStr.substring(0, numberStr.length - 1);
    } else {
      returnString = numberStr;
    }

    return returnString;
  }

  static double parseSeparator(String value) {
    try {
      double numberStr =
      NumberFormat('#,##0.00', 'en_US').parse(value).toDouble();
      return numberStr;
    } catch (e) {
      return 0;
    }
  }
}
