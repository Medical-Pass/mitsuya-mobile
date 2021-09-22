enum SharedPreferencesKey {
  sampleUserName,
  jobNum,
  termsOfUseFlag,
  dataUsageFlag,
  memo,
  uuid,
  licenseMemo
}

extension SharedPreferencesKeyExtension on SharedPreferencesKey {
  String get value {
    switch (this) {
      case SharedPreferencesKey.sampleUserName:
        return 'sampleUserName';
      case SharedPreferencesKey.jobNum:
        return 'jobNum';
      case SharedPreferencesKey.termsOfUseFlag:
        return 'termsOfUseFlag';
      case SharedPreferencesKey.dataUsageFlag:
        return 'dataUsageFlag';
      case SharedPreferencesKey.memo:
        return 'memo';
      case SharedPreferencesKey.uuid:
        return 'uuid';
      case SharedPreferencesKey.licenseMemo:
        return 'licenseMemo';
    }
  }
}
