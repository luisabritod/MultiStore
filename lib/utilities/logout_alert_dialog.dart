// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';

class LogOutAlertDialog {
  static void showAlertDialog({
    required BuildContext context,
    required String title,
    required String content,
    required Function() onNo,
    required Function() onYes,
  }) {
    showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            onPressed: onNo,
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            onPressed: onYes,
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
