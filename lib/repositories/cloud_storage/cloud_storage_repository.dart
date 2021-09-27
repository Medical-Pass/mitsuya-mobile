import 'dart:io';

import 'package:base_app/logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path_provider/path_provider.dart';

firebase_storage.FirebaseStorage _storage =
    firebase_storage.FirebaseStorage.instance;

Future<void> uploadFile(String filePath, String ref) async {
  File file = File(filePath);

  try {
    await _storage.ref(ref).putFile(file);
  } on FirebaseException catch (e) {
    logger.info(e);
  }
}

Future<void> downloadFileExample() async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  File downloadToFile = File('${appDocDir.path}/download-logo.png');

  try {
    await firebase_storage.FirebaseStorage.instance
        .ref('uploads/logo.png')
        .writeToFile(downloadToFile);
  } on FirebaseException catch (e) {
    // e.g, e.code == 'canceled'
  }
}
