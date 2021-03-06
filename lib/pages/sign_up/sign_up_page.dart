import 'package:base_app/pages/sign_in/sign_in_page.dart';
import 'package:base_app/pages/sign_up/sign_up_view_model.dart';
import 'package:base_app/pages/user_regist/user_regist_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';
import '../../constants.dart';
import '../../validation.dart';
import '../../widgets/show_err_dialog.dart';

class SignUpPage extends HookWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = signUpViewModelProvider;
    final viewModel = useProvider(provider);

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SIGN UP',
            style: TextStyle(color: kBlack1Color),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 50),
                      const Text('メールアドレス'),
                      const SizedBox(height: 10),
                      TextFormField(
                          key: viewModel.emailKey,
                          initialValue: 'takubon3140@gmail.com',
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          obscureText: true,
                          initialValue: '012345',
                          key: viewModel.passwordKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          if (viewModel.emailKey.currentState!.validate() &&
                              viewModel.passwordKey.currentState!.validate()) {
                            try {
                              UserCredential userCredential = await FirebaseAuth
                                  .instance
                                  .createUserWithEmailAndPassword(
                                      email: viewModel
                                          .emailKey.currentState!.value!,
                                      password: viewModel
                                          .passwordKey.currentState!.value!);
                              await Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const UserRegistPage(),
                                    fullscreenDialog: false,
                                  ));
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                showErrDialog(context, 'パスワードを長くしてください。');
                              } else if (e.code == 'email-already-in-use') {
                                showErrDialog(
                                    context, 'このメールアドレスはすでに登録されています。');
                              }
                            } catch (e) {
                              print(e);
                            }
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
                          child: const Text('Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  backgroundColor: Colors.transparent,
                                  fontSize: kTitle1,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: RichText(
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
                                              const SignInPage(),
                                          fullscreenDialog: false,
                                        ));
                                  },
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ))),
        ));
  }
}
