import 'package:base_app/app_model.dart';
import 'package:base_app/pages/sign_up/sign_up_page.dart';
import 'package:base_app/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'colors.dart';
import 'logger.dart';
import 'models/user_state/user_state.dart';
import 'pages/home/home_ichiran_page.dart';
import 'providers/navigator.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // final provider = userProfileNotifierProvider;

    const locale = Locale('ja', 'JP');
    final model = AppModel();

    return MaterialApp(
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!),
      title: 'MITSUYA',
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
      home: StreamBuilder(
        stream: model.userState,
        initialData: UserState.waiting,
        builder: (context, AsyncSnapshot<UserState> snapshot) {
          final state = snapshot.connectionState == ConnectionState.waiting
              ? UserState.waiting
              : snapshot.data;
          logger.info('MyApp(): userState = $state');
          return _convertPage(state);
        },
      ),
    );
  }

  /// UserState => page
  StatelessWidget _convertPage(UserState? state) {
    switch (state) {
      case UserState.waiting: // 初期化中
        // return SplashPage();
        return const SignUpPage();

      case UserState.noLogin: // 未ログイン
        return const SignUpPage();

      case UserState.member: // サロンメンバー
        return const HomeIchiranPage();
      default:
        return const SignUpPage();
    }
  }
}
