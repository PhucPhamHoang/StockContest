import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

class ElemRender {
  static void showSnackBarNotification(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

}