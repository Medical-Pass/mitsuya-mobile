import 'package:base_app/pages/user_regist/user_regist_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';
import '../../constants.dart';
import '../main/main_page.dart';

class UserRegistPage extends HookWidget {
  const UserRegistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = userRegistViewModelProvider;
    final viewModel = useProvider(provider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('チーム情報', style: TextStyle(color: kBlack1Color)),
          ),
          body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        const Text('チーム名'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.teamKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'チーム名を入力してください')),
                        const SizedBox(height: 50),
                        const Text('拠点'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.placeKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '拠点を入力してください')),
                        const SizedBox(height: 50),
                        const Text('チーム人数'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.teamNumKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'チーム人数を入力してください')),
                        const SizedBox(height: 50),
                        const Text('サービス名'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.serviceKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'サービス名を入力してください')),
                        const SizedBox(height: 50),
                        const Text('サービスのジャンル*'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.serviceGenreKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'サービスのジャンルを入力してください')),
                        const SizedBox(height: 50),
                        const Text('サービスの仕組み*'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.serviceJobKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'サービスの仕組みを入力してください')),
                        const SizedBox(height: 50),
                        const Text('協働の目的*'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.coWorkGoalKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '協働の目的を入力してください')),
                        const SizedBox(height: 50),
                        const Text('サービスの内容'),
                        const SizedBox(height: 10),
                        TextFormField(
                            minLines: 3,
                            maxLines: 5,
                            key: viewModel.serviceContentKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText:
                                    '起業準備をしている方のための、サービスの認知と実績の拡大を加速させる、協働型のオンラインプラットフォーム')),
                        const SizedBox(height: 50),
                        const Text('サービスの進度'),
                        const SizedBox(height: 10),
                        TextFormField(
                            minLines: 3,
                            maxLines: 5,
                            key: viewModel.serviceProcessKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'ベータ版検証中')),
                        const SizedBox(height: 50),
                        const Text('ビジョン'),
                        const SizedBox(height: 10),
                        TextFormField(
                            minLines: 3,
                            maxLines: 5,
                            key: viewModel.visionKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '起業という選択肢をよりライトに')),
                        const SizedBox(height: 50),
                        const Text('背景'),
                        const SizedBox(height: 10),
                        TextFormField(
                            minLines: 3,
                            maxLines: 5,
                            key: viewModel.backgroundKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText:
                                    '起業の世界では、「個」で戦っている方が多いという現状を目の当たりにした時に、協力して「集」で'
                                    '戦うことを当たり前にできれば、もっと上手くいく')),
                        const SizedBox(height: 100),
                        ElevatedButton(
                          onPressed: () async {
                            if (viewModel.serviceGenreKey.currentState!
                                    .validate() &&
                                viewModel.serviceJobKey.currentState!
                                    .validate() &&
                                viewModel.coWorkGoalKey.currentState!
                                    .validate()) {
                              await Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        MainPage(),
                                    fullscreenDialog: false,
                                  ));
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
                            child: const Text('チーム情報を登録する',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    backgroundColor: Colors.transparent,
                                    fontSize: kTitle1,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(height: 100),
                      ])))),
    );
  }
}
