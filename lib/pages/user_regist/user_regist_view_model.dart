import 'dart:io';

import 'package:base_app/models/job/job.dart';
import 'package:base_app/models/role/role.dart';
import 'package:base_app/repositories/cloud_storage/cloud_storage_repository.dart';
import 'package:base_app/widgets/show_request_permission_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

part 'user_regist_view_model.freezed.dart';

@freezed
class UserRegistViewModelState with _$UserRegistViewModelState {
  factory UserRegistViewModelState({@Default('') String imagePath,
    @Default(<Job>[]) List<Job> jobList,
    @Default(<Role>[]) List<Role> roleList,}) =
      _UserRegistViewModelState;
}

final userRegistViewModelProvider =
    StateNotifierProvider.autoDispose<UserRegistViewModel>(
        (ref) => UserRegistViewModel(ref.read));

class UserRegistViewModel extends StateNotifier<UserRegistViewModelState>
    with LocatorMixin {
  UserRegistViewModel(
    this._read,
  ) : super(UserRegistViewModelState()) {
    Future.delayed(Duration.zero, () async {

      await setJobs();
      await setRoles();

    });
  }

  final Reader _read;
  // UserNotifier get UserNotifier =>
  //     _read(userRegistNotifierProvider);

  final nameKey = GlobalKey<FormFieldState<String>>();
  final profileImageKey = GlobalKey<FormFieldState<String>>();
  final birthdayKey = GlobalKey<FormFieldState<String>>();
  final jobKey = GlobalKey<FormFieldState<String>>();
  final roleKey = GlobalKey<FormFieldState<String>>();
  final passionForServiceKey = GlobalKey<FormFieldState<String>>();
  final commentKey = GlobalKey<FormFieldState<String>>();

  final birthdayController = TextEditingController();
  final genderController = TextEditingController();
  final jobController = TextEditingController();
  final roleController = TextEditingController();

  bool checkKeyValidate() {
    return nameKey.currentState!.validate() &&
        roleKey.currentState!.validate() &&
        passionForServiceKey.currentState!.validate() &&
        commentKey.currentState!.validate();
  }

  CollectionReference _users = FirebaseFirestore.instance.collection('users');


  String getJobId(List<Job> jobList, String value) {
    return jobList.where((e) => e.name == value).first.id;
  }

  String getRoleId(List<Role> roleList, String value) {
    return roleList.where((e) => e.name == value).first.id;
  }


  Future<void> addUser() async {
    checkKeyValidate();
    final _auth = FirebaseAuth.instance;

    //先にstorage
    if (state.imagePath != '') {
      await uploadFile(state.imagePath,
          'user/${_auth.currentUser!.uid}/${basename(state.imagePath)}');
    }

    return _users
        .add({
          'userId': _auth.currentUser!.uid,
          'imagePath': state.imagePath != ''
              ? 'user/${_auth.currentUser!.uid}/${basename(state.imagePath)}'
              : null,
          'name': nameKey.currentState!.value, // John Doe
          'birthday': birthdayKey.currentState!.value,
          'jobId': jobKey.currentState!.value != null ?
          getJobId(state.jobList, jobKey.currentState!.value!) : null,
          'roleId': roleKey.currentState!.value != null ?
          getRoleId(state.roleList, roleKey.currentState!.value!) : null,
          'passionForService': passionForServiceKey.currentState!.value,
          'comment': commentKey.currentState!.value,
        })
        .then((value) => print("User Added"))
        .catchError((Object error) => print("Failed to add user: $error"));
  }

  Future<void> setJobs() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('jobs')
          .orderBy('order', descending: false)
          .get();

      state = state.copyWith(jobList: snapshot.docs.map((e) => Job.doc(e)).toList());


    } catch (e) {
      print('error:${e.toString()}');
      rethrow;
    }
  }

  Future<void> setRoles() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('roles')
          .orderBy('order', descending: false)
          .get();
      state = state.copyWith(roleList: snapshot.docs.map((e) => Role.doc(e)).toList());

    } catch (e) {
      print('error:${e.toString()}');
      rethrow;
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
    }
  }

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

}
