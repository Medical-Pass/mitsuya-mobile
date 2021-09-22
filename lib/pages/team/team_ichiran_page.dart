import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../colors.dart';

class TeamIchiranPage extends HookWidget {
  const TeamIchiranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = TeamIchiranPageViewModelProvider;
    //  final viewModel = useProvider(provider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('TeamIchiranPage',
                style: TextStyle(color: kBlack1Color)),
          ),
          body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [])))),
    );
  }
}
