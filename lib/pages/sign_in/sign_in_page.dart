import 'package:base_app/pages/sign_in/sign_in_view_model.dart';
import 'package:base_app/pages/sign_up/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';
import '../../constants.dart';
import '../../validation.dart';
import '../main/main_page.dart';

class SignInPage extends HookWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = signInViewModelProvider;
    final viewModel = useProvider(provider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('UserRegistPage',
                style: TextStyle(color: kBlack1Color)),
          ),
          body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 50),
                        const Text('メールアドレス'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.emailKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              if (value != '' && !isValidEmail(value!)) {
                                return '有効なメールアドレスを入力してください。';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'メールアドレスを入力してください')),
                        const SizedBox(height: 50),
                        const Text('パスワード'),
                        const SizedBox(height: 10),
                        TextFormField(
                            // key: viewModel.passwordKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              if (value != '' && !isValidPassword(value!)) {
                                return '有効なパスワードを入力してください。';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'パスワードを入力してください')),
                        const SizedBox(height: 100),
                        ElevatedButton(
                          onPressed: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => MainPage(),
                                  fullscreenDialog: false,
                                ));

                            if (viewModel.emailKey.currentState!.validate() &&
                                viewModel.passwordKey.currentState!
                                    .validate()) {
                              // await viewModel.onUpdate(editId!);
                              // await Navigator.push(context,
                              //   MaterialPageRoute<void>(
                              //   builder: (BuildContext context)=> const NewRegistration(),
                              //   fullscreenDialog: false,
                              // ));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: kBlack1Color,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.all(0),
                          ),
                          child: Container(
                            color: Colors.transparent,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text('Sign In',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    backgroundColor: Colors.transparent,
                                    fontSize: kTitle1,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(height: 50),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'すでにアカウントを持っている方はこちら',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    await Navigator.push(
                                        context,
                                        MaterialPageRoute<void>(
                                          builder: (BuildContext context) =>
                                              const SignUpPage(),
                                          fullscreenDialog: false,
                                        ));
                                  },
                              )
                            ],
                          ),
                        )
                      ])))),
    );
  }
}
