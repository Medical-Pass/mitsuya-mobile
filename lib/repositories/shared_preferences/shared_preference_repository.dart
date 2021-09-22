import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preference_key.dart';

abstract class SharedPreferencesRepository {
  Future<bool> save<T>(SharedPreferencesKey key, T value);
  Future<T?> load<T>(SharedPreferencesKey key);
  Future<bool> remove(SharedPreferencesKey key);
}

class SharedPreferencesRepositoryImpl implements SharedPreferencesRepository {
  SharedPreferencesRepositoryImpl(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<bool> save<T>(SharedPreferencesKey key, T value) async {
    if (value is int) {
      return _prefs.setInt(key.value, value);
    }
    if (value is double) {
      return _prefs.setDouble(key.value, value);
    }
    if (value is bool) {
      return _prefs.setBool(key.value, value);
    }
    if (value is String) {
      return _prefs.setString(key.value, value);
    }
    if (value is List<String>) {
      return _prefs.setStringList(key.value, value);
    }
    return false;
  }

  @override
  Future<T?> load<T>(SharedPreferencesKey key) async {
    if (T.toString() == 'int') {
      return _prefs.getInt(key.value) as T?;
    }
    if (T.toString() == 'double') {
      return _prefs.getDouble(key.value) as T?;
    }
    if (T.toString() == 'bool') {
      return _prefs.getBool(key.value) as T?;
    }
    if (T.toString() == 'String') {
      return _prefs.getString(key.value) as T?;
    }
    if (T.toString() == 'List<String>') {
      return _prefs.getStringList(key.value) as T?;
    }
    return null;
  }

  @override
  Future<bool> remove(SharedPreferencesKey key) => _prefs.remove(key.value);
}
