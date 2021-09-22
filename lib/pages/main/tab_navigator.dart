import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TabNavigatorRoutes {
  static const String root = '/';
}

class TabNavigator extends HookWidget {
  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.page,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final HookWidget page;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) => page,
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute<StatefulWidget>(
          builder: routeBuilders[routeSettings.name]!,
        );
      },
    );
  }
}
