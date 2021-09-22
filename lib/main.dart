import 'dart:io';

import 'package:base_app/logger.dart';
import 'package:base_app/providers/directory.dart';
import 'package:base_app/repositories/shared_preferences/provider.dart';
import 'package:base_app/repositories/sqflite/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:webview_flutter/webview_flutter.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  /// 縦固定
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  /// WebView
  if (Platform.isAndroid) {
    WebView.platform = SurfaceAndroidWebView();
  }

  /// タイムゾーンの設定
  tz.initializeTimeZones();
  final currentTimeZone = await FlutterNativeTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(currentTimeZone));

  /// 利用するインスタンスの設定
  Logger.configure();
  await SharedPreferencesProvider.configure();
  await SqlProvider.configure();
  await DirectoryProvider.configure();

  runApp(ProviderScope(child: App()));
}
