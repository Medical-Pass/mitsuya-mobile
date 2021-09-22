import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:base_app/widgets/show_err_dialog.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:map_launcher/map_launcher.dart';

Future<void> showMapLauncher(
  BuildContext context,
  String title,
  String address,
) async {
  List<Location> locations;
  try {
    locations = await locationFromAddress(address);
  } on NoResultFoundException {
    showErrDialog(context, '有効な住所を入力してください。');
    return;
  }

  if (locations.isEmpty) {
    return;
  }

  final la = locations.first.latitude;
  final lo = locations.first.longitude;
  await _showMapLauncher(
    context,
    address,
    la,
    lo,
  );
}

Future<void> _showMapLauncher(
  BuildContext context,
  String title,
  double latitude,
  double longitude,
) async {
  final maps = (await MapLauncher.installedMaps).where(
    (element) =>
        element.mapType == MapType.google || element.mapType == MapType.apple,
  );
  Future<MapType?> getMapType() async {
    if (maps.length == 2) {
      final google =
          maps.firstWhere((element) => element.mapType == MapType.google);
      final apple =
          maps.firstWhere((element) => element.mapType == MapType.apple);
      final result = await showModalActionSheet<int>(
        context: context,
        title: title,
        actions: const [
          SheetAction<int>(label: 'Google Maps', key: 0),
          SheetAction<int>(label: 'マップ', key: 1),
        ],
        cancelLabel: 'キャンセル',
      );
      if (result == 0) {
        return google.mapType;
      } else if (result == 1) {
        return apple.mapType;
      }
      return null;
    } else {
      final result = await showModalActionSheet<int>(
        context: context,
        title: '使用するアプリを選択してください',
        actions: [
          SheetAction<int>(
              label: Platform.isAndroid ? 'Google Maps' : 'マップ', key: 0),
        ],
        cancelLabel: 'キャンセル',
      );
      if (result == 0) {
        return maps.first.mapType;
      }
      return null;
    }
  }

  final mapType = await getMapType();
  if (mapType == null) {
    return;
  }
  await MapLauncher.showMarker(
    mapType: mapType,
    coords: Coords(
      latitude,
      longitude,
    ),
    title: title,
  );
}
