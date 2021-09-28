import 'dart:io';

import 'package:base_app/pages/main/main_page.dart';
import 'package:base_app/pages/team_regist/team_regist_view_model.dart';
import 'package:base_app/widgets/profile_avatar.dart';
import 'package:base_app/widgets/show_bottom_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';
import '../../constants.dart';

class TeamRegistPage extends HookWidget {
  const TeamRegistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = teamRegistViewModelProvider;
    final viewModel = useProvider(provider);

    final imagePath = useProvider(
            provider.state.select((TeamRegistViewModelState state) => state))
        .imagePath;

    final selectedGenreId = useProvider(
            provider.state.select((TeamRegistViewModelState state) => state))
        .selectedGenreId;
    final selectedServiceId = useProvider(
            provider.state.select((TeamRegistViewModelState state) => state))
        .selectedServiceId;

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
                        const Text('1.サービスを一言で'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.serviceShortKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            )),
                        const SizedBox(height: 30),
                        Center(child: const Text('2. 写真')),
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
                                  const Text('3.サービスのジャンル'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                      key: viewModel.serviceGenreKey,
                                      readOnly: true,
                                      controller: viewModel.genreController,
                                      onTap: () async {
                                        final genres =
                                            await viewModel.getGenres();

                                        await showBottomPicker(
                                            context,
                                            genres.map((e) => e.name).toList(),
                                            viewModel.genreController,
                                            'サービスのジャンル');

                                        viewModel.setGenreId(
                                            viewModel.genreController.text,
                                            genres);
                                      },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (String? value) {
                                        return null;
                                      },
                                      decoration: const InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.arrow_drop_down),
                                          border: OutlineInputBorder(),
                                          hintText: '趣味・娯楽')),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('4.サービスの仕組み'),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    readOnly: true,
                                    key: viewModel.serviceWorkKey,
                                    controller: viewModel.serviceWorkController,
                                    onTap: () async {
                                      final serviceWork =
                                          await viewModel.getServiceWork();

                                      await showBottomPicker(
                                          context,
                                          serviceWork
                                              .map((e) => e.name)
                                              .toList(),
                                          viewModel.serviceWorkController,
                                          'サービスの仕組み');

                                      viewModel.setServiceId(
                                          viewModel.serviceWorkController.text,
                                          serviceWork);
                                    },
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
                        const Text('5.協働の目的'),
                        const SizedBox(height: 10),
                        TextFormField(
                            key: viewModel.coWorkGoalKey,
                            readOnly: true,
                            onTap: () {
                              viewModel.showMultiSelect(context);
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (String? value) {
                              return null;
                            },
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.arrow_drop_down),
                                border: OutlineInputBorder(),
                                hintText: '認知の拡大 | 実績を増やす | 施策・')),
                        const SizedBox(height: 50),
                        const Text('6.サービスの内容'),
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
                        const Text('7.サービスのビジョン'),
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
                                hintText:
                                    '準備段階からのオープンイノベーションのような掛け合わせで、認知の拡大や実績の獲得、'
                                    '新しい価値の創出を目指す。')),
                        const SizedBox(height: 50),
                        const Text('8.サービスの背景'),
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
                                    '戦うことを当たり前にできれば、もっと上手くいく。')),
                        const SizedBox(height: 100),
                        ElevatedButton(
                          onPressed: () async {
                            if (viewModel.checkKeyValidate()) {
                              await viewModel.addTeam();

                              await Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const MainPage(),
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
