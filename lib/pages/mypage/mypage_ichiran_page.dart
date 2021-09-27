import 'package:base_app/pages/sign_in/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../colors.dart';

class MypageIchiranPage extends HookWidget {
  const MypageIchiranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final provider = MypageIchiranPageViewModelProvider;
    // final viewModel = useProvider(provider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('マイページ', style: TextStyle(color: kBlack1Color)),
            actions: [
              IconButton(
                  color: kBlack1Color,
                  icon: Icon(Icons.logout),
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();

                    await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) => SignInPage()),
                        (_) => true);
                  })
            ],
          ),
          body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [])))),
    );
  }
}
