import 'dart:io';

import 'package:base_app/converters/date_time_string_converter.dart';
import 'package:base_app/pages/team_regist/team_regist_page.dart';
import 'package:base_app/pages/user_regist/user_regist_view_model.dart';
import 'package:base_app/widgets/profile_avatar.dart';
import 'package:base_app/widgets/show_bottom_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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

    final jobList = useProvider(
            provider.state.select((UserRegistViewModelState state) => state))
        .jobList;

    final roleList = useProvider(
            provider.state.select((UserRegistViewModelState state) => state))
        .roleList;

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
                                  const Text('3.生年月日'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    readOnly: true,
                                    onTap: () async {
                                      final today = DateTime.now();
                                      await DatePicker.showDatePicker(context,
                                          showTitleActions: true,
                                          minTime:
                                              DateTime(today.year - 100, 1, 1),
                                          maxTime: DateTime(today.year, 12, 31),
                                          theme: const DatePickerTheme(
                                              itemStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18),
                                              doneStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16)),
                                          onChanged: (date) {},
                                          onConfirm: (date) {
                                        viewModel.birthdayController.text =
                                            const DateTimeStringConverter()
                                                .getJapaneseDay2(date);
                                      },
                                          currentTime: DateTime.now(),
                                          locale: LocaleType.jp);
                                    },
                                    key: viewModel.birthdayKey,
                                    controller: viewModel.birthdayController,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (String? value) {
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.arrow_drop_down),
                                      border: OutlineInputBorder(),
                                    ),
                                  )
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('4.職業'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                      readOnly: true,
                                      onTap: () async {
                                        await showBottomPicker(
                                            context,
                                            jobList.map((e) => e.name).toList(),
                                            viewModel.jobController,
                                            '職業');
                                      },
                                      key: viewModel.jobKey,
                                      controller: viewModel.jobController,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (String? value) {
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.arrow_drop_down),
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
                                  const Text('5.役割'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    readOnly: true,
                                    onTap: () async {
                                      await showBottomPicker(
                                          context,
                                          roleList.map((e) => e.name).toList(),
                                          viewModel.roleController,
                                          '役割');
                                    },
                                    key: viewModel.roleKey,
                                    controller: viewModel.roleController,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: (String? value) {
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.arrow_drop_down),
                                      border: OutlineInputBorder(),
                                    ),
                                  )
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
