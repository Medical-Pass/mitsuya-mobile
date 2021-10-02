import 'package:base_app/gen/assets.gen.dart';
import 'package:base_app/notifiers/cowork/cowork_notifier.dart';
import 'package:base_app/notifiers/cowork/cowork_state.dart';
import 'package:base_app/notifiers/genre/genre_notifier.dart';
import 'package:base_app/notifiers/service_work/service_work_notifier.dart';
import 'package:base_app/pages/search/search_view_model.dart';
import 'package:base_app/pages/search/service_work_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';
import 'cowork_column.dart';
import 'genre_column.dart';

class SearchPage extends HookWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final genreImages = [
      Assets.icons.roundSportsEsportsBlack24dp1,
      Assets.icons.roundWaterDropBlack24dp1,
      Assets.icons.roundMedicalServicesBlack24dp1,
      Assets.icons.roundSchoolBlack24dp1,
      Assets.icons.roundHomeBlack24dp1,
      Assets.icons.roundPublicBlack24dp1,
      Assets.icons.roundShoppingCartBlack24dp1,
      Assets.icons.roundParkBlack24dp1,
      Assets.icons.roundVolunteerActivismBlack24dp1,
      Assets.icons.roundConstructionBlack24dp1,
      Assets.icons.roundTransgenderBlack24dp1,
      Assets.icons.roundFeedBlack24dp1,
      Assets.icons.roundDvrBlack24dp1,
      Assets.icons.roundDvrBlack24dp1,
      Assets.icons.roundNewReleasesBlack24dp1,
      Assets.icons.roundMoreHorizBlack24dp1,
    ];

    final serviceWorkImages = [
      Assets.icons.roundApartmentBlack24dp1,
      Assets.icons.roundGroupsBlack24dp1,
      Assets.icons.roundSmartphoneBlack24dp1,
      Assets.icons.roundApiBlack24dp1,
      Assets.icons.roundVillaBlack24dp1,
      Assets.icons.roundStorefrontBlack24dp1,
      Assets.icons.outlinePeopleAltBlack24dp1,
      Assets.icons.roundPersonAddBlack24dp1,
      Assets.icons.roundPersonSearchBlack24dp1,
      Assets.icons.roundCrueltyFreeBlack24dp1,
      Assets.icons.roundComputerBlack24dp1,
      Assets.icons.roundManageAccountsBlack24dp1,
      Assets.icons.roundEditBlack24dp1,
      Assets.icons.roundArticleBlack24dp1,
      Assets.icons.roundSearchBlack24dp1,
      Assets.icons.roundMoreHorizBlack24dp2,
    ];

    final coWorkImages = [
      Assets.icons.roundRecordVoiceOverBlack24dp1,
      Assets.icons.roundEmojiEventsBlack24dp1,
      Assets.icons.roundSmartphoneBlack24dp1,
      Assets.icons.roundBarChartBlack24dp1,
      Assets.icons.roundVillaBlack24dp1,
      Assets.icons.roundFestivalBlack24dp1,
      Assets.icons.roundAutoStoriesBlack24dp1,
      Assets.icons.roundShareBlack24dp1,
      Assets.icons.roundGroupAddBlack24dp1,
      Assets.icons.roundPeopleBlack24dp1,
      Assets.icons.roundAutorenewBlack24dp1,
      Assets.icons.roundDirectionsRunBlack24dp1,
      Assets.icons.roundEmojiPeopleBlack24dp1,
      Assets.icons.roundMoreHorizBlack24dp3,
    ];

    final provider = searchViewModelProvider;
    final viewModel = useProvider(provider);

    final genreProvider = genreNotifierProvider;
    final genreNotifier = useProvider(genreProvider);

    final serviceWorkProvider = serviceWorkNotifierProvider;
    final serviceWorkNotifier = useProvider(serviceWorkProvider);

    final coWorkProvider = coworkNotifierProvider;
    final coWorkNotifier = useProvider(coWorkProvider);

    final state =
        useProvider(coWorkProvider.state.select((CoworkState state) => state));

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('サーチ', style: TextStyle(color: kBlack1Color)),
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: kBlack1Color,
                  ),
                  onPressed: () {})
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
                        GenreColumn(
                          genreList: genreNotifier.state.data,
                          genreImages: genreImages,
                        ),
                        const SizedBox(height: 50),
                        const Text(
                          '仕組みから探す',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        ServiceWorkColumn(
                            serviceWorkList: serviceWorkNotifier.state.data,
                            serviceWorkImages: serviceWorkImages),
                        const SizedBox(height: 50),
                        const Text(
                          '協働の目的から探す',
                          style: TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 10),
                        CoworkColumn(
                            coworkList: coWorkNotifier.state.data,
                            coworkImages: coWorkImages)
                      ])))),
    );
  }
}
