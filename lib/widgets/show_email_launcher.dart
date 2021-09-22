import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showEmailLauncher(
  BuildContext context,
  String email, {
  String? subject,
}) async {
  Uri getUri(String scheme) {
    return Uri(
      scheme: scheme,
      path: email,
      queryParameters:
          subject != null ? <String, dynamic>{'subject': subject} : null,
    );
  }

  final gmailUri = getUri('googlegmail');
  final defaultMailUrl = getUri('mailto');

  Future<Uri?> getUriFromSheet() async {
    if (Platform.isAndroid) {
      final result = await showModalActionSheet<int>(
        context: context,
        title: '使用するアプリを選択してください',
        actions: [
          const SheetAction<int>(label: 'Gmail', key: 0),
        ],
        cancelLabel: 'キャンセル',
      );
      if (result == 0) {
        return defaultMailUrl;
      }
    } else {
      final isGmail = await canLaunch(gmailUri.toString());
      final result = await showModalActionSheet<int>(
        context: context,
        title: '使用するアプリを選択してください',
        actions: isGmail
            ? const [
                SheetAction<int>(label: 'Gmail', key: 0),
                SheetAction<int>(label: 'メール', key: 1),
              ]
            : const [SheetAction<int>(label: 'メール', key: 1)],
        cancelLabel: 'キャンセル',
      );
      if (result == 0) {
        return gmailUri;
      } else if (result == 1) {
        return defaultMailUrl;
      }
    }
    return null;
  }

  final uri = await getUriFromSheet();
  if (uri == null) {
    return;
  }

  final launchUri = uri.toString().contains('googlegmail')
      ? 'googlegmail://co?&to=' + email
      : uri.toString();
  await launch(launchUri);
}
