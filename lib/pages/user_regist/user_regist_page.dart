import 'dart:io';

import 'package:base_app/pages/team_regist/team_regist_page.dart';
import 'package:base_app/pages/user_regist/user_regist_view_model.dart';
import 'package:base_app/widgets/profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';
import '../../constants.dart';

class UserRegistPage extends HookWidget {
  const UserRegistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = userRegistViewModelProvider;
    final viewModel = useProvider(provider);

    final imagePath = useProvider(
            provider.state.select((UserRegistViewModelState state) => state))
        .imagePath;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('ユーザー情報', style: TextStyle(color: kBlack1Color)),
          ),
          body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        const Text('1. プロフィール画像'),
                        const SizedBox(height: 10),
                        ProfileAvatar(
                            onTap: () async {
                              await viewModel.onTapGallery(context);
                            },
                            size: 120,
                            noImageWidget: Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            image: imagePath != ''
                                ? Center(
                                    child: SizedBox(
                                        child: Image.file(
                                      File(imagePath),
                                      fit: BoxFit.contain,
                                    )),
                                  )
                                : null),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 180,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('2.名前'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                      key: viewModel.nameKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (String? value) {
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: '名前を入力してください')),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('3.役割'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                      key: viewModel.roleKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (String? value) {
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: '役割を入力してください')),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('サービスへの想い'),
                                  TextFormField(
                                      minLines: 3,
                                      maxLines: 5,
                                      key: viewModel.passionForServiceKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (String? value) {
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText:
                                              '自分の今後や未来についてライトに考える機会を持ってほしい')),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('コメント'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                      minLines: 3,
                                      maxLines: 5,
                                      key: viewModel.commentKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (String? value) {
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText:
                                              '色々な方とお話しして自分たちの知識や幅、深さといったものを磨いていきたいです!!'
                                              'ぜひぜひ気軽にお話ししましょうー！ZOOM等も大歓迎でーす!!')),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 100),
                        ElevatedButton(
                          onPressed: () async {
                            print(viewModel.checkKeyValidate());
                            if (viewModel.checkKeyValidate()) {
                              await viewModel.addUser();

                              await Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const TeamRegistPage(),
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
                            child: const Text('次へ',
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
