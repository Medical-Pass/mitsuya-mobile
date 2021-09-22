import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../colors.dart';

class HomeIchiranPage extends HookWidget {
  const HomeIchiranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Text('協働するチームを探す', style: TextStyle(color: kBlack1Color)),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {})
          ],
        ),
        body: Container());
  }
}
