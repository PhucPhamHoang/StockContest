import 'package:flutter/cupertino.dart';

class UIrender {
  const UIrender._();

  static Future<void> showDialog(
      BuildContext context, String title, String message) async {
    return showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext ctx) {
        return CupertinoAlertDialog(
          title: title.isNotEmpty ? Text(title) : null,
          content: message.isNotEmpty ? Text(message) : null,
          actions: [
            CupertinoDialogAction(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              isDefaultAction: true,
              child: const Text(
                'Đã hiểu',
                style: TextStyle(
                  color: CupertinoColors.activeBlue,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}