import 'package:base_app/gen/assets.gen.dart';
import 'package:base_app/pages/search/search_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = searchViewModelProvider;
    final viewModel = useProvider(provider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('サーチ', style: TextStyle(color: kBlack1Color)),
            actions: [
              IconButton(icon: Icon(Icons.notifications), onPressed: () {})
            ],
          ),
          body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'ジャンルから探す',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                _getIconButtonWidget(
                                  genreJp: '趣味・娯楽',
                                  num: 0,
                                  assetImage:
                                      Assets.icons.roundSportsEsportsBlack24dp1,
                                ),
                                const SizedBox(width: 20),
                                _getIconButtonWidget(
                                    genreJp: '趣味・娯楽',
                                    num: 0,
                                    assetImage: Assets
                                        .icons.roundSportsEsportsBlack24dp1),
                                const SizedBox(width: 20),
                                _getIconButtonWidget(
                                    genreJp: '趣味・娯楽',
                                    num: 0,
                                    assetImage: Assets
                                        .icons.roundSportsEsportsBlack24dp1),
                                const SizedBox(width: 20),
                                _getIconButtonWidget(
                                    genreJp: '趣味・娯楽',
                                    num: 0,
                                    assetImage: Assets
                                        .icons.roundSportsEsportsBlack24dp1),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 100),
                        const Text(
                          '仕組みから探す',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                      ])))),
    );
  }
}

class _getIconButtonWidget extends StatelessWidget {
  const _getIconButtonWidget({
    Key? key,
    required this.genreJp,
    required this.num,
    required this.assetImage,
  }) : super(key: key);

  final String genreJp;
  final int num;
  final AssetGenImage assetImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: assetImage.image(
                    width: 30, height: 30, fit: BoxFit.contain),
                onPressed: () {},
              ),
            ),
            Text('$num件')
          ],
        ),
        const SizedBox(height: 5),
        Text(genreJp),
      ],
    );
  }
}
