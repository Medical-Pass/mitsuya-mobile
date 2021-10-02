import 'package:base_app/pages/search/search_detail_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../colors.dart';

class SearchDetailPage extends HookWidget {
  const SearchDetailPage({Key? key, required this.id, required this.objectId})
      : super(key: key);

  final String objectId;
  final String id;

  @override
  Widget build(BuildContext context) {
    final provider = searchDetailViewModelProvider;
    final viewModel = useProvider(provider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title:
                Text('SearchDetailPage', style: TextStyle(color: kBlack1Color)),
          ),
          body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [])))),
    );
  }
}
