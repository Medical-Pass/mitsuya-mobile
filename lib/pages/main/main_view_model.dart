import 'package:base_app/notifiers/user_profile/user_profile_notifier.dart';
import 'package:base_app/pages/cowork/cowork_ichiran_page.dart';
import 'package:base_app/pages/home/home_ichiran_page.dart';
import 'package:base_app/pages/mypage/mypage_ichiran_page.dart';
import 'package:base_app/pages/notification/notification_ichiran_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'tab_navigator.dart';

part 'main_view_model.freezed.dart';

final mainViewModelProvider =
    StateNotifierProvider<MainViewModel>((ref) => MainViewModel(ref.read));

@freezed
class MainViewModelState with _$MainViewModelState {
  const factory MainViewModelState(
      {@Default(0) int selectedIndex,
      @Default(null) int? jobNum,
      @Default(false) bool finishQuestionsFlag}) = _MainViewModelState;
}

class MainViewModel extends StateNotifier<MainViewModelState> {
  MainViewModel(
    this._read,
  ) : super(const MainViewModelState()) {}

  final Reader _read;

  UserProfileNotifier get userProfileNotifier =>
      _read(userProfileNotifierProvider);

  final List<HookWidget> widgetList = [
    HomeIchiranPage(),
    NotificationIchiranPage(),
    CoworkIchiranPage(),
    MypageIchiranPage(),
  ];

  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };

  void onItemTapped(int index) {
    state = state.copyWith(selectedIndex: index);
  }

  Future<bool> onWillPop() async {
    final keyTab = navigatorKeys[state.selectedIndex]!;
    if (keyTab.currentState != null && keyTab.currentState!.canPop()) {
      return !await keyTab.currentState!.maybePop();
    }
    return Future.value(true);
  }

  Widget buildOffstageNavigator(int index) {
    return Offstage(
      offstage: index != state.selectedIndex,
      child: TabNavigator(
        navigatorKey: navigatorKeys[index]!,
        page: widgetList[index],
      ),
    );
  }
}
