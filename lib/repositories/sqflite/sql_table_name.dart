enum SqlTableName {
  todo,
  clinic,
  reservation,
  mendanMemo,
  rinshoushinrishiPoint,
  clinicColumn,
  gakkaiKenshu,
  categoryBetsuData,
  categoryBetsuDataAlarm,
  license,
  nenkaihi,
  businessCard,
  rirekiBasicInfo,
  rirekiBackGround,
  rirekiLicense,
  rirekiDutyCareerDocument,
  rirekiRewardAndPunishment,
  rirekiWishIncentive,
  rirekiDesiredEntriesField,
  rirekiCareerDocument,
  rirekiPerformanceBook,
  rirekiPerformanceAcademicPaper,
  rirekiPerformancePresentation,
  rirekiOutputDate,
}

extension SqlTableNameExtension on SqlTableName {
  String get value {
    switch (this) {
      case SqlTableName.todo:
        return 'todo';
      case SqlTableName.clinic:
        return 'clinic';
      case SqlTableName.reservation:
        return 'reservation';
      case SqlTableName.mendanMemo:
        return 'mendanMemo';
      case SqlTableName.rinshoushinrishiPoint:
        return 'rinshoushinrishiPoint';
      case SqlTableName.clinicColumn:
        return 'clinicColumn';
      case SqlTableName.gakkaiKenshu:
        return 'gakkaiKenshu';
      case SqlTableName.categoryBetsuData:
        return 'categoryBetsuData';
      case SqlTableName.categoryBetsuDataAlarm:
        return 'categoryBetsuDataAlarm';
      case SqlTableName.license:
        return 'license';
      case SqlTableName.nenkaihi:
        return 'nenkaihi';
      case SqlTableName.businessCard:
        return 'businessCard';
      case SqlTableName.rirekiBasicInfo:
        return 'rirekiBasicInfo';
      case SqlTableName.rirekiBasicInfo:
        return 'rirekiBasicInfo';
      case SqlTableName.rirekiDutyCareerDocument:
        return 'rirekiDutyCareerDocument';
      case SqlTableName.rirekiBackGround:
        return 'rirekiBackGround';
      case SqlTableName.rirekiLicense:
        return 'rirekiLicense';
      case SqlTableName.rirekiRewardAndPunishment:
        return 'rirekiRewardAndPunishment';
      case SqlTableName.rirekiWishIncentive:
        return 'rirekiWishIncentive';
      case SqlTableName.rirekiDesiredEntriesField:
        return 'rirekiDesiredEntriesField';
      case SqlTableName.rirekiCareerDocument:
        return 'rirekiCareerDocument';
      case SqlTableName.rirekiPerformanceBook:
        return 'rirekiPerformanceBook';
      case SqlTableName.rirekiPerformanceAcademicPaper:
        return 'rirekiPerformanceAcademicPaper';
      case SqlTableName.rirekiPerformancePresentation:
        return 'rirekiPerformancePresentation';
      case SqlTableName.rirekiOutputDate:
        return 'rirekiOutputDate';
    }
  }
}
