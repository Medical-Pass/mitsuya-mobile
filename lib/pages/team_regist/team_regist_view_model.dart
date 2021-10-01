import 'dart:io';

import 'package:base_app/colors.dart';
import 'package:base_app/models/cowork/cowork.dart';
import 'package:base_app/models/genre/genre.dart';
import 'package:base_app/models/service_work/service_work.dart';
import 'package:base_app/notifiers/genre/genre_notifier.dart';
import 'package:base_app/repositories/cloud_storage/cloud_storage_repository.dart';
import 'package:base_app/widgets/show_request_permission_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_select_flutter/dialog/mult_select_dialog.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

part 'team_regist_view_model.freezed.dart';

@freezed
class TeamRegistViewModelState with _$TeamRegistViewModelState {
  factory TeamRegistViewModelState({@Default('') String imagePath,
    @Default(<String>[]) List<String> coWorkList,
    @Default('') String selectedGenreId,
    @Default('') String selectedServiceId}) =
      _TeamRegistViewModelState;
}

final teamRegistViewModelProvider =
    StateNotifierProvider.autoDispose<TeamRegistViewModel>(
        (ref) => TeamRegistViewModel(ref.read));

class TeamRegistViewModel extends StateNotifier<TeamRegistViewModelState>
    with LocatorMixin {
  TeamRegistViewModel(this._read,) : super(TeamRegistViewModelState()) {
    Future.delayed(Duration.zero, () async {


    });
  }

  final Reader _read;

  GenreNotifier get genreNotifier =>
      _read(genreNotifierProvider);

  final serviceShortKey = GlobalKey<FormFieldState<String>>();
  final serviceGenreKey = GlobalKey<FormFieldState<String>>();
  final serviceWorkKey = GlobalKey<FormFieldState<String>>();
  final coWorkGoalKey = GlobalKey<FormFieldState<String>>();
  final serviceContentKey = GlobalKey<FormFieldState<String>>();
  final visionKey = GlobalKey<FormFieldState<String>>();
  final backgroundKey = GlobalKey<FormFieldState<String>>();

  final genreController = TextEditingController();
  final serviceWorkController = TextEditingController();

  bool checkKeyValidate() {
    return
        serviceShortKey.currentState!.validate() &&
        serviceWorkKey.currentState!.validate() &&
        serviceGenreKey.currentState!.validate() &&
        coWorkGoalKey.currentState!.validate() &&
        serviceContentKey.currentState!.validate() &&
        visionKey.currentState!.validate() &&
        backgroundKey.currentState!.validate();
  }

   String _getIndex(String value, List<Genre> lists) {
     final index = lists.map((e) => e.name).toList().indexOf(value);
    return lists[index].id;
  }

  String _getIndex2(String value, List<ServiceWork> lists) {
    final index = lists.map((e) => e.name).toList().indexOf(value);
    return lists[index].id;
  }

  void setGenreId(String selectedGenre, List<Genre> genres) {
    state = state.copyWith(selectedGenreId:_getIndex(selectedGenre,genres));
  }

  void setServiceId(String selectedService, List<ServiceWork> services) {
    state = state.copyWith(selectedServiceId:_getIndex2(selectedService,services));
  }



  CollectionReference _teams = FirebaseFirestore.instance.collection('teams');

  Future<void> showMultiSelect(BuildContext context) async {

    final coWorkGoals = await getCoWorkGoals();

    final coWorkGoalsName = coWorkGoals.map((e) => e.name).toList();
    final coWorkGoalsId = coWorkGoals.map((e) => e.id).toList();

    await showDialog<void>(
      context: context,
      builder: (ctx) {
        return MultiSelectDialog<void>(
          searchable:false,
            selectedColor:kPointColor,
          items: _getCoworkItems(coWorkGoals),
          initialValue: null,
          onConfirm: (List<void> values) {
            coWorkGoalKey.currentState?.didChange(values.join(' | '));

            final tmp = values.map( (e) => coWorkGoalsId[coWorkGoalsName.indexOf(e as String)]).toList();
            print(tmp);

            state = state.copyWith(coWorkList:tmp);

          },
        );
      },
    );
  }

    Future<void> _cropImage(String imageFilePath) async {
      File? croppedFile = await ImageCropper.cropImage(
          sourcePath: imageFilePath,
          cropStyle: CropStyle.circle
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
      }
    }

  Future<List<ServiceWork>> getServiceWork() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('serviceWork')
      .orderBy('order')
          .get();

      return snapshot.docs.map((e) => ServiceWork.doc(e)).toList();
    } catch (e) {
      print('error:${e.toString()}');
      rethrow;
    }
  }

    Future<List<CoWork>> getCoWorkGoals() async {
      try {
        final snapshot = await FirebaseFirestore.instance
            .collection('coWorkGoals')
            .orderBy('order')
            .get();
        print(snapshot);

        return snapshot.docs.map((e) => CoWork.doc(e)).toList();
      } catch (e) {
        print('error:${e.toString()}');
        rethrow;
      }
    }

  Future<List<Genre>> getGenres() async {
    return genreNotifier.fetchAll();
  }

  Future<void> addTeam() async {
    checkKeyValidate();


    //先にstorage
    if (state.imagePath != '') {
      await uploadFile(state.imagePath,
          'team/ee/${basename(state.imagePath)}');
    }

    return _teams
        .add({
      'serviceShort': serviceShortKey.currentState!.value, // John Doe
      'imageId' : state.imagePath,
      'genreId' : state.selectedGenreId,
      'serviceWorkId': state.selectedServiceId,
      'coWorkGoalIds': state.coWorkList,
      'vision': visionKey.currentState!.value,
      'background': backgroundKey.currentState!.value
    })
        .then((value) {
          print("Team Added");
          print(value);

        }
          )
        .catchError((Object error) => print("Failed to add team: $error"));
  }

  Future<void> onTapGallery(BuildContext context) async {
    try {
      final file = await ImagePicker().getImage(source: ImageSource.gallery);
      if (file == null) {
        return;
      }
      await _cropImage(file.path);
    } on PlatformException {
      if (await Permission.photos.isPermanentlyDenied) {
        showRequestPermissionDialog(context, '写真のアクセスを許可する必要があります。');
      }
      return;
    }
  }

  List<MultiSelectItem>_getCoworkItems(List<CoWork> coWorkGoals) {
    return coWorkGoals.map((e) => MultiSelectItem(e.name,e.name)).toList();
  }

}