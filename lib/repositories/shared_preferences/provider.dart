import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preference_repository.dart';

/// Instance
late SharedPreferences _pref;

/// Provider
final sharedPreferencesRepositoryProvider =
    Provider<SharedPreferencesRepository>((ref) {
  return SharedPreferencesRepositoryImpl(_pref);
});

class SharedPreferencesProvider {
  SharedPreferencesProvider._();
  static final SharedPreferencesProvider instance =
      SharedPreferencesProvider._();
  static Future<void> configure() async {
    _pref = await SharedPreferences.getInstance();
  }
}
