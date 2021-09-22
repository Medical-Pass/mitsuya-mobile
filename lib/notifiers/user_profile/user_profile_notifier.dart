import 'dart:async';

import 'package:base_app/notifiers/user_profile/user_profile_state.dart';
import 'package:base_app/repositories/shared_preferences/provider.dart';
import 'package:base_app/repositories/shared_preferences/shared_preference_key.dart';
import 'package:base_app/repositories/shared_preferences/shared_preference_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

final userProfileNotifierProvider = StateNotifierProvider<UserProfileNotifier>(
    (ref) => UserProfileNotifier(ref.read));

class UserProfileNotifier extends StateNotifier<UserProfileState> {
  UserProfileNotifier(
    this._read,
  ) : super(UserProfileState()) {
    setJobNum();
  }

  final Reader _read;

  SharedPreferencesRepository get sharedPreferencesRepository =>
      _read(sharedPreferencesRepositoryProvider);

  Future<UserProfileState> fetch() async {
    final name = await sharedPreferencesRepository
        .load<String>(SharedPreferencesKey.sampleUserName);

    // ignore: join_return_with_assignment
    state = state.copyWith(name: name);
    return state;
  }

  Future<void> setJobNum() async {
    final job = await sharedPreferencesRepository
        .load<int>(SharedPreferencesKey.jobNum);
    state = state.copyWith(jobNum: job);
  }

  Future<int?> getJob() async {
    // ignore: cast_nullable_to_non_nullable
    final job = await sharedPreferencesRepository
        .load<int>(SharedPreferencesKey.jobNum);
    return job;
  }

  Future<bool?> getDataUsageFlag() async {
    // ignore: cast_nullable_to_non_nullable
    final dataUsageFlag = await sharedPreferencesRepository
        .load<String>(SharedPreferencesKey.dataUsageFlag) as bool;
    return dataUsageFlag;
  }

  Future<bool?> getTermsOfUseFlag() async {
    // ignore: cast_nullable_to_non_nullable
    final termsOfUseFlag = await sharedPreferencesRepository
        .load<String>(SharedPreferencesKey.termsOfUseFlag) as bool;
    return termsOfUseFlag;
  }

  Future<String?> getMemo() async {
    final memo = await sharedPreferencesRepository
        .load<String>(SharedPreferencesKey.memo);
    return memo;
  }

  Future<String?> getLicenseMemo() async {
    final licenseMemo = await sharedPreferencesRepository
        .load<String>(SharedPreferencesKey.licenseMemo);
    return licenseMemo;
  }

  Future<void> onSaveUserProfile(
      int jobNum, bool termsOfUseFlag, bool dataUsageFlag) async {
    await sharedPreferencesRepository.save<int>(
        SharedPreferencesKey.jobNum, jobNum);

    await sharedPreferencesRepository.save<bool>(
        SharedPreferencesKey.dataUsageFlag, dataUsageFlag);

    await sharedPreferencesRepository.save<bool>(
        SharedPreferencesKey.termsOfUseFlag, termsOfUseFlag);

    await sharedPreferencesRepository.save<String>(
        SharedPreferencesKey.uuid, const Uuid().v4());

    state = state.copyWith(
        jobNum: jobNum,
        termsOfUseFlag: termsOfUseFlag,
        dataUsageFlag: dataUsageFlag);
  }

  Future<void> onSaveName(String name) async {
    await sharedPreferencesRepository.save<String>(
        SharedPreferencesKey.sampleUserName, name);
    state = state.copyWith(name: name);
  }

  Future<void> onSaveMemo(String text) async {
    await sharedPreferencesRepository.save(SharedPreferencesKey.memo, text);
    state = state.copyWith(memo: text);
  }

  Future<void> onSaveLicenseMemo(String text) async {
    await sharedPreferencesRepository.save(
        SharedPreferencesKey.licenseMemo, text);
    state = state.copyWith(licenseMemo: text);
  }
}
