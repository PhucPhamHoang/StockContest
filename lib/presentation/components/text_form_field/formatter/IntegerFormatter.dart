import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

final integerFormatter = NumberFormat("#,###");

class IntegerFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String? text;
    String? _temp;

    if (newValue.text.length < oldValue.text.length) {
      final textNew = newValue.text.replaceAll(",", "");
      final textOld = oldValue.text.replaceAll(",", "");
      if (textNew == textOld) {
        _temp = "";
        for (int i = 0; i < newValue.text.length; i++) {
          if (i != (newValue.selection.baseOffset - 1)) {
            _temp = _temp! + newValue.text[i];
          }
        }
      }
    }
    text = _convertString(_temp ?? newValue.text);

    final subLength = text == null ? 0 : text.length - newValue.text.length;
    return text == null
        ? newValue.text.isEmpty
        ? newValue
        : oldValue
        : TextEditingValue(
        text: text,
        selection: TextSelection.fromPosition(
          TextPosition(
            offset: newValue.selection.baseOffset + subLength,
          ),
        ));
  }

  String? _convertString(String dataInput) {
    if (dataInput.isEmpty) return null;
    try {
      return integerFormatter
          .format(int.tryParse(dataInput.replaceAll(",", "")));
    } catch (e) {
      print(e);
    }

    return null;
  }
}
