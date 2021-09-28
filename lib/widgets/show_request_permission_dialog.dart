import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../colors.dart';

void showRequestPermissionDialog(BuildContext context, String text) async {
  await showDialog<void>(
    context: context,
    builder: (context1) {
      return AlertDialog(
        title: Text(text),
        actions: <Widget>[
          TextButton(
            child: Text(
              "キャンセル",
              style: TextStyle(color: kPointColor),
            ),
            onPressed: () => Navigator.pop(context1),
          ),
          TextButton(
            child: Text(
              "設定",
              style: TextStyle(color: kPointColor),
            ),
            onPressed: () async {
              await openAppSettings();
            },
          ),
        ],
      );
    },
  );
}
