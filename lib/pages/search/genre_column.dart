import 'package:base_app/gen/assets.gen.dart';
import 'package:base_app/models/genre/genre.dart';
import 'package:base_app/pages/search/search_detail_page.dart';
import 'package:flutter/material.dart';

class GenreColumn extends StatelessWidget {
  const GenreColumn(
      {Key? key, required this.genreList, required this.genreImages})
      : super(key: key);

  final List<Genre> genreList;
  final List<AssetGenImage> genreImages;
  static const columnNum = 4;

  @override
  Widget build(BuildContext context) {
    final columnItem = <Widget>[];
    var rowItem = <Widget>[];
    for (var i = 0; i < genreList.length; i++) {
      rowItem.add(_getIconButtonWidget(
          assetImage: genreImages[i], genres: genreList[i]));
      if (i % columnNum == columnNum - 1) {
        columnItem.add(Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rowItem,
        ));
        columnItem.add(SizedBox(height: 15));
        rowItem = <Widget>[];
      } else if (i == genreList.length - 1) {
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
      {Key? key, required this.assetImage, required this.genres})
      : super(key: key);

  final AssetGenImage assetImage;
  final Genre genres;

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
                            id: genres.id,
                            objectId: 'genre',
                          ),
                          fullscreenDialog: false,
                        ));
                  },
                ),
              ),
              genres.teamNum != null
                  ? Text('${genres.teamNum}件', style: TextStyle(fontSize: 9))
                  : const Text(
                      '0件',
                      style: TextStyle(fontSize: 9),
                    )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            genres.name,
            style: TextStyle(fontSize: 9),
          ),
        ],
      ),
    );
  }
}
