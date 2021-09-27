import 'dart:io';

import 'package:base_app/models/genre/genre.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

part 'team_regist_view_model.freezed.dart';

@freezed
class TeamRegistViewModelState with _$TeamRegistViewModelState {
  factory TeamRegistViewModelState({@Default('') String imagePath}) =
      _TeamRegistViewModelState;
}

final teamRegistViewModelProvider =
    StateNotifierProvider.autoDispose<TeamRegistViewModel>(
        (ref) => TeamRegistViewModel(ref.read));

class TeamRegistViewModel extends StateNotifier<TeamRegistViewModelState>
    with LocatorMixin {
  TeamRegistViewModel(
    this._read,
  ) : super(TeamRegistViewModelState()) {
    Future.delayed(Duration.zero, () async {});
  }

  final Reader _read;
  // TeamNotifier get TeamNotifier =>
  //     _read(teamRegistNotifierProvider);

  final serviceShortKey = GlobalKey<FormFieldState<String>>();
  final teamKey = GlobalKey<FormFieldState<String>>();
  final placeKey = GlobalKey<FormFieldState<String>>();
  final teamNumKey = GlobalKey<FormFieldState<String>>();
  final serviceKey = GlobalKey<FormFieldState<String>>();
  final serviceGenreKey = GlobalKey<FormFieldState<String>>();
  final serviceJobKey = GlobalKey<FormFieldState<String>>();
  final coWorkGoalKey = GlobalKey<FormFieldState<String>>();
  final serviceContentKey = GlobalKey<FormFieldState<String>>();
  final serviceProcessKey = GlobalKey<FormFieldState<String>>();
  final visionKey = GlobalKey<FormFieldState<String>>();
  final backgroundKey = GlobalKey<FormFieldState<String>>();

  bool _checkKeyValidate() {
    return !teamKey.currentState!.validate() ||
        !placeKey.currentState!.validate() ||
        !teamNumKey.currentState!.validate() ||
        !serviceKey.currentState!.validate() ||
        !serviceJobKey.currentState!.validate() ||
        !serviceProcessKey.currentState!.validate() ||
        !coWorkGoalKey.currentState!.validate() ||
        !serviceContentKey.currentState!.validate() ||
        !serviceProcessKey.currentState!.validate() ||
        !visionKey.currentState!.validate() ||
        !backgroundKey.currentState!.validate();
  }

  CollectionReference _teams = FirebaseFirestore.instance.collection('teams');


  Future<void> onTapGallery(BuildContext context) async {
    try {
      final file = await ImagePicker().getImage(source: ImageSource.gallery);
      if (file == null) {
        return;
      }
      _cropImage(file.path);
    } on PlatformException {
      if (await Permission.photos.isPermanentlyDenied) {
        showRequestPermissionDialog(context, '写真のアクセスを許可する必要があります。');
      }
      return;
    }
  }

  Future<void> _cropImage(String imageFilePath) async {
    File? croppedFile = await ImageCropper.cropImage(
        sourcePath: imageFilePath,
        cropStyle:CropStyle.circle
        aspectRatioPresets: Platform.isAndroid
        ? [
        CropAspectRatioPreset.square,
        ]
            : [
        CropAspectRatioPreset.square,
        ],
        androidUiSettings: AndroidUiSettings(
    toolbarTitle: 'Cropper',
    toolbarColor: Colors.deepOrange,
    toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
    title: 'Cropper',
    ));
    if (croppedFile != null) {
    state = state.copyWith(imagePath: croppedFile.path);

    // imageFile = croppedFile;
    // setState(() {
    //   state = AppState.cropped;
    // });
    }
  }

  Future<void> addTeam() {
    _checkKeyValidate();

    return _teams
        .add({
          'full_name': '大久保　匠', // John Doe
          // Stokes and Sons
          'age': 22 // 42
        })
        .then((value) => print("Team Added"))
        .catchError((Object error) => print("Failed to add team: $error"));
  }

  Future<List<Genre>> getGenres() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('genres')
          .orderBy('createdAt', descending: true)
          .get();
      return snapshot.docs.map((e) => Genre.doc(e)).toList();
    } catch (e) {
      print('error:${e.toString()}');
      rethrow;
    }
  }

// Future<void> onUpdate(String id) async {
//   if (!fieldKey.currentState!.validate() ||
//      ) {
//     return;
//   }
//
//   await TeamNotifier.onUpdate(
//       id,
//       const DateTimeStringConverter()
//           .getDateTime(dateKey.currentState!.value!),
//       int.parse(pointKey.currentState!.value!),
//       const IntStringConverter()
//           .getIntPoint(fieldKey.currentState!.value!.substring(0, 2)),
//       activeNameKey.currentState!.value!,
//       state.imagePath != '' ? File(state.imagePath) : null);
// }
//
//
// Future<Team?> getFromId(String id) async {
//   return TeamNotifier.getFromId(id);
// }
//
// Future<void> setOldData(String id) async {
//   final result = await getFromId(id);
//
//   if (result == null) {
//     return null;
//   }
//
//   String imagePath = '';
//
//   if (result.field != null) {
//     fieldKey.currentState?.didChange(kPointTextList[result.field - 1]);
//   }
//
//   state = state.copyWith(imagePath: imagePath);
// }
}
