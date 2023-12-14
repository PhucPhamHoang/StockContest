import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
class PaddingFormatter extends TextInputFormatter {
  BuildContext context;
  bool? forceNextFocus;
  bool? forcePreviousFocus;
  List<TextEditingController> controllers;
  TextEditingController controller;
  PaddingFormatter({
    required this.controller,
    required this.context,
    this.forceNextFocus,
    this.forcePreviousFocus,
    required this.controllers,
  });
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String oldText = oldValue.text;
    String newText = newValue.text;
    String text = oldText;
    int offset = 2;
    if (oldText == ' -' && newText.length == 3) {
      int? number = int.tryParse(newText[2]);
      if (number != null) {
        text = ' $number';
        if (forceNextFocus != true) {
          FocusScope.of(context).nextFocus();
        }
      }
    }
    if (oldText == ' -' && newText.length == 2) {
      int? number = int.tryParse(newText[1]);
      if (number != null) {
        text = ' $number';
        if (forceNextFocus != true) {
          FocusScope.of(context).nextFocus();
        }
      }
    }
    if (oldText != ' -' && newText == ' ') {
      text = text = ' -';

      if (forcePreviousFocus != true) {
        if (forceNextFocus != true) {
          FocusScope.of(context).previousFocus();
        }
      }
    }
    if (oldText == ' -' && newText == ' ') {
      text = text = ' -';

      if (forcePreviousFocus != true) {
        FocusScope.of(context).previousFocus();
        for (var i = 0; i < controllers.length; i++) {
          if (controller == controllers[i]) {
            if (i >= 1) {
              controllers[i - 1].text = ' -';
            }
          }
        }
      }
    }
    // if (newText.length == 3 && oldText != ' -' && newText.contains(oldText)) {
    //   isNext = true;
    //   int? number = int.tryParse(newText[2]);
    //   if (number != null) {
    //     currentOTPText = ' $number';
    //   }

    //   return TextEditingValue(
    //     text: text,
    //     selection: TextSelection.fromPosition(const TextPosition(offset: 1)),
    //   );
    // }
    return TextEditingValue(
      text: text,
      selection: TextSelection.fromPosition(TextPosition(offset: offset)),
    );
  }
}
