import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

// ignore: one_member_abstracts
abstract class BundleRepository {
  Future<Map<String, dynamic>?> loadJson(String filename);
}

class BundleRepositoryImpl implements BundleRepository {
  BundleRepositoryImpl(this._bundle);

  final AssetBundle _bundle;

  @override
  Future<Map<String, dynamic>?> loadJson(String filename) async {
    final data = await _bundle.loadString(filename);
    return jsonDecode(data) as Map<String, dynamic>?;
  }
}
