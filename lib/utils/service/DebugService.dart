import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class DebugService {
  static printConsole(dynamic value) {
    if (kDebugMode) {
      print('${DateTime.now()}: $value');
    }
  }

  static saveString(String value) {
    if (kDebugMode) {
      Clipboard.setData(ClipboardData(text: value));
    }
  }
}
