import 'package:base_app/colors.dart';
import 'package:flutter/material.dart';

Future<void> showInfoDialog(BuildContext context, String subject) async {
  return showDialog(
      context: context,
      builder: (BuildContext context1) {
        return AlertDialog(
          content: Text(subject),
          actions: <Widget>[
            // ボタン領域
            TextButton(
              onPressed: () => Navigator.of(context1).pop(),
              child: const Text(
                'OK',
                style: TextStyle(color: kPointColor),
              ),
            ),
          ],
        );
      });
}
