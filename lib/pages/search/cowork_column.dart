import 'package:base_app/gen/assets.gen.dart';
import 'package:base_app/models/cowork/cowork.dart';
import 'package:base_app/pages/search/search_detail_page.dart';
import 'package:flutter/material.dart';

class CoworkColumn extends StatelessWidget {
  const CoworkColumn(
      {Key? key, required this.coworkList, required this.coworkImages})
      : super(key: key);

  final List<CoWork> coworkList;
  final List<AssetGenImage> coworkImages;
  static const columnNum = 4;

  @override
  Widget build(BuildContext context) {
    final columnItem = <Widget>[];
    var rowItem = <Widget>[];
    for (var i = 0; i < coworkList.length; i++) {
      rowItem.add(_getIconButtonWidget(
          assetImage: coworkImages[i], coworks: coworkList[i]));
      if (i % columnNum == columnNum - 1) {
        columnItem.add(Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rowItem,
        ));
        columnItem.add(SizedBox(height: 15));
        rowItem = <Widget>[];
      } else if (i == coworkList.length - 1) {
        columnItem.add(Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rowItem,
        ));
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: columnItem,
    );
  }
}

class _getIconButtonWidget extends StatelessWidget {
  const _getIconButtonWidget(
      {Key? key, required this.assetImage, required this.coworks})
      : super(key: key);

  final AssetGenImage assetImage;
  final CoWork coworks;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  onPressed: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => SearchDetailPage(
                            id: coworks.id,
                            objectId: 'cowork',
                          ),
                          fullscreenDialog: false,
                        ));
                  },
                ),
              ),
              coworks.teamNum != null
                  ? Text('${coworks.teamNum}件', style: TextStyle(fontSize: 9))
                  : const Text(
                      '0件',
                      style: TextStyle(fontSize: 9),
                    )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            coworks.name,
            style: TextStyle(fontSize: 9),
          ),
        ],
      ),
    );
  }
}
