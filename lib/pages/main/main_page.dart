import 'package:base_app/colors.dart';
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
        // const BottomNavigationBarItem(
        //   icon: Icon(
        //     Icons.home_filled,
        //   ),
        //   label: 'ホーム',
        // ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'トーク',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.search),
          label: 'サーチ',
        ),
        // BottomNavigationBarItem(
        //   icon: const Icon(Icons.event),
        //   label: 'イベント',
        // ),
        // BottomNavigationBarItem(
        //   icon: const Icon(Icons.book),
        //   label: 'ニュース',
        // ),
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
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: getBottomSheet(),
          selectedItemColor: kBlack1Color,
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
