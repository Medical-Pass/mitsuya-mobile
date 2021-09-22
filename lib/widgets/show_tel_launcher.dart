import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> showTelLauncher(
  BuildContext context,
  String telnum, {
  String? subject,
}) async {
  Uri _getUri(String scheme) {
    return Uri(
      scheme: scheme,
      path: telnum,
    );
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final _defaultTelUrl = _getUri('tel');

  Future<Uri?> _getUriFromSheet() async {
    final result = await showModalActionSheet<int>(
      context: context,
      title: '使用するアプリを選択してください',
      actions: const [SheetAction<int>(label: '電話', key: 0)],
      cancelLabel: 'キャンセル',
    );

    if (result == 0) {
      return _defaultTelUrl;
    }
    return null;
  }

  final uri = await _getUriFromSheet();
  if (uri == null) {
    return;
  }
  print(uri);
  await _makePhoneCall(uri.toString());
}
