import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'main_view_model.dart';

class MainPage extends HookWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = mainViewModelProvider;
    final notifier = useProvider(provider);

    List<BottomNavigationBarItem> getBottomSheet() {
      var tmpList = [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'ホーム',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'お知らせ',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.wallpaper),
          label: '協働一覧',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: 'マイページ',
        ),
      ];

      return tmpList;
    }

    return WillPopScope(
      onWillPop: notifier.onWillPop,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            notifier.buildOffstageNavigator(0),
            notifier.buildOffstageNavigator(1),
            notifier.buildOffstageNavigator(2),
            notifier.buildOffstageNavigator(3),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: getBottomSheet(),
          type: BottomNavigationBarType.fixed,
          currentIndex: useProvider(
                  provider.state.select((MainViewModelState state) => state))
              .selectedIndex,
          onTap: notifier.onItemTapped,
        ),
      ),
    );
  }
}
