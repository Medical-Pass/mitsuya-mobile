import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final directoryProvider = Provider((_) => DirectoryProvider.instance);

class DirectoryProvider {
  DirectoryProvider._();
  static final DirectoryProvider instance = DirectoryProvider._();

  static Future<void> configure() async {
    await instance.setDirectory();
  }

  Directory get directory => _directory;
  late Directory _directory;

  Future<void> setDirectory() async {
    _directory = await getApplicationDocumentsDirectory();
  }
}
