import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

Future<void> shareScreenshot(GlobalKey globalKey) async {
  if (globalKey.currentContext == null) {
    return;
  }
  final boundary =
      globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
  await Future<void>.delayed(const Duration(milliseconds: 20));
  final image = await boundary.toImage(pixelRatio: 3);
  final byteData = await image.toByteData(
    format: ImageByteFormat.png,
  );
  final filename = 'screenshot_${DateTime.now().millisecond}.png';
  final dir = await getTemporaryDirectory();
  final file = File('${dir.path}/$filename')
    ..writeAsBytesSync(byteData!.buffer.asUint8List());
  await Share.shareFiles(
    [file.path],
    mimeTypes: ['image/png'],
  );
}
