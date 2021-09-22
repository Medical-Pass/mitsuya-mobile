import 'package:base_app/notifiers/user_profile/user_profile_notifier.dart';
import 'package:base_app/pages/main/main_page.dart';
import 'package:base_app/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'colors.dart';
import 'providers/navigator.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final provider = userProfileNotifierProvider;

    const locale = Locale('ja', 'JP');
    return MaterialApp(
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!),
      title: '医療計算機New',
      locale: locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [locale],
      theme: appTheme,
      navigatorKey: useProvider(navigatorKeyProvider),
      debugShowCheckedModeBanner: debugMode,
      home: MainPage(),
    );
  }
}
