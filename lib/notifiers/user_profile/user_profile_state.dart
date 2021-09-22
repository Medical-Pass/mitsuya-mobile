import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  factory UserProfileState({
    String? name,
    File? image,
    int? jobNum,
    bool? termsOfUseFlag,
    bool? dataUsageFlag,
    String? memo,
    String? licenseMemo,
  }) = _UserProfileState;

  static String get imageFilename => 'sampleProfileImage';
}
