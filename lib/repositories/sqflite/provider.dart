import 'dart:async';

import 'package:base_app/logger.dart';
import 'package:base_app/repositories/sqflite/sql_table_name.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

import 'sql_repository.dart';

final sqlRepositoryProvider = Provider<SqlRepository>(
    (_) => SqlRepositoryImpl(SqlProvider.instance.database));

class SqlProvider {
  SqlProvider._();
  static final SqlProvider instance = SqlProvider._();
  static const String _pathName = 'base_app.db';
  static const int _version = 3;

  static Future<void> configure() async {
    await instance.createDatabase();
  }

  Database get database => _database;
  late Database _database;

  Future<void> createDatabase() async {
    _database = await _createDatabase();
  }

  Future<Database> _createDatabase() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _pathName);
    print(path);

    return openDatabase(
      path,
      version: _version,
      onConfigure: _onConfigure,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        /// テーブルを新規作成する際に追加する
        final batch = db.batch();

        ///1次リリース
        _createClinicV1(batch);
        _createReservationV1(batch);
        _createMendanmemoV1(batch);
        _createRinshoushinrishiPointV1(batch);

        ///2次リリース
        _createClinicColumnV1(batch);
        _createBusinessCardV1(batch);
        // _insertBusinessCard(batch);

        ///3次リリース
        _createGakkaiKenshuV1(batch);
        _createCategoryBetsuDataV1(batch);
        _createCategoryBetsuDataAlarmV1(batch);
        _createLicenseV1(batch);
        _createNenkaihiV1(batch);

        ///4次リリース
        _createRirekiBasicInfoV1(batch);
        _createRirekiBackGroundV1(batch);
        _createRirekiLicenseV1(batch);
        _createRirekiRewardAndPunishmentV1(batch);
        _createRirekiWishIncentiveV1(batch);
        _createRirekiDesiredEntriesFieldV1(batch);
        _createRirekiDutyCareerDocumentV1(batch);
        _createRirekiPerformanceBookV1(batch);
        _createRirekiPerformanceAcademicPaperV1(batch);
        _createRirekiPerformancePresentaionV1(batch);
        _createRirekiOutputDateV1(batch);

        await batch.commit();
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        /// リリース後に既存テーブルのスキーマを変更したい場合にマイグレーションロジックを実装する
        /// _createClinicColumnV1(batch);

        logger.info('onUpgrade $oldVersion -> $newVersion');
        for (var i = oldVersion + 1; i <= newVersion; i++) {
          final queries = _migrationSchemes[i]!;
          final batch = db.batch();
          queries.forEach((e) => e(batch));
          await batch.commit();
        }

        /// 2次リリースデータを挿入(デバック用)
        // final batch = db.batch();
        // _insertBusinessCard(batch);
        // await batch.commit();
      },
    );
  }

  /// Migrationスキーマテーブル
  final _migrationSchemes = {
    2: [_createClinicColumnV1, _createBusinessCardV1],
    3: [
      _createGakkaiKenshuV1,
      _createCategoryBetsuDataV1,
      _createCategoryBetsuDataAlarmV1,
      _createLicenseV1,
      _createNenkaihiV1
    ],
    4: [
      _createRirekiBasicInfoV1,
      _createRirekiBackGroundV1,
      _createRirekiLicenseV1,
      _createRirekiRewardAndPunishmentV1,
      _createRirekiWishIncentiveV1,
      _createRirekiDesiredEntriesFieldV1,
      _createRirekiDutyCareerDocumentV1,
      _createRirekiPerformanceBookV1,
      _createRirekiPerformanceAcademicPaperV1,
      _createRirekiPerformancePresentaionV1,
      _createRirekiOutputDateV1
    ]
  };
}

/// 外部キー制約を有効にする
Future<void> _onConfigure(Database db) async {
  await db.execute('PRAGMA foreign_keys = ON;');
}

void _insertBusinessCard(Batch batch) {
  batch.execute('''
insert into ${SqlTableName.businessCard.value} values('${const Uuid().v4()}', 0, 'name1', 'nameKana1','role', 'affliationNameKana2','affliationName2','564-0043', 33,'feafeaf', '080','takubon3140@gageg.fef','${DateTime.now()}','${DateTime.now()}');
  ''');
  batch.execute('''
insert into ${SqlTableName.businessCard.value} values('${const Uuid().v4()}', 0, 'name3', 'nameKana3','role', 'affliationNameKana1','affliationName1','5640043', 1,'feafeaf', '080','takubon3140@gageg.fef','${DateTime.now()}','${DateTime.now()}');
  ''');
  batch.execute('''
insert into ${SqlTableName.businessCard.value} values('${const Uuid().v4()}', 0, 'name2', 'nameKana2','role', 'affliationNameKana3','affliationName3','5640043', 46,'feafeaf', '080','takubon3140@gageg.fef','${DateTime.now()}','${DateTime.now()}');
  ''');
  batch.execute('''
insert into ${SqlTableName.businessCard.value} values('${const Uuid().v4()}', 0, 'name4', 'nameKana4','role', 'affliationNameKana2','affliationName2','5640043', 33,'feafeaf', '080','takubon3140@gageg.fef','${DateTime.now()}','${DateTime.now()}');
  ''');
  batch.execute('''
insert into ${SqlTableName.businessCard.value} values('${const Uuid().v4()}', 0, 'name5', 'nameKana5','role', 'affliationNameKana1','affliationName1','5640043', 1,'feafeaf', '080','takubon3140@gageg.fef','${DateTime.now()}','${DateTime.now()}');
  ''');
  batch.execute('''
insert into ${SqlTableName.businessCard.value} values('${const Uuid().v4()}', 0, 'name6', 'nameKana6','role', 'affliationNameKana3','affliationName3','5640043', 46,'feafeaf', '080','takubon3140@gageg.fef','${DateTime.now()}','${DateTime.now()}');
  ''');
}

/// テーブル作成
void _createClinicV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.clinic.value} 
        (
          id TEXT PRIMARY KEY,
          clinic TEXT,
          address TEXT,
          telNum TEXT,
          mailAddress TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createReservationV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.reservation.value} 
        (
          id TEXT PRIMARY KEY,
          date TEXT NOT NULL,
          soudankikanmei TEXT NOT NULL,
          tantousha TEXT NOT NULL,
          notifyId int NOT NULL,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createMendanmemoV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.mendanMemo.value} 
        (
          id TEXT PRIMARY KEY,
          date TEXT NOT NULL,
          text TEXT NOT NULL,
          imagePath TEXT,
          musicPath TEXT,
          moviePath TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRinshoushinrishiPointV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rinshoushinrishiPoint.value} 
        (
          id TEXT PRIMARY KEY,
          activeDate TEXT NOT NULL,
          activeName TEXT NOT NULL,
          point INTEGER NOT NULL,
          field INTEGER NOT NULL,
          imagePath TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createClinicColumnV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.clinicColumn.value} 
        (
          id TEXT PRIMARY KEY,
          date TEXT NOT NULL,
          shubetsu TEXT NOT NULL,
          event TEXT NOT NULL,
          mood1 TEXT NOT NULL,
          mood1Value INTEGER NOT NULL,
          mood2 TEXT,
          mood2Value INTEGER,
          mood3 TEXT,
          mood3Value INTEGER,          
          autoThinking TEXT NOT NULL,
          reason TEXT NOT NULL,
          hansho TEXT NOT NULL,
          adaptedThinking TEXT NOT NULL,
          changedMood1 TEXT NOT NULL,
          changedMood1Value INTEGER NOT NULL,
          changedMood2 TEXT,
          changedMood2Value INTEGER,
          changedMood3 TEXT,
          changedMood3Value INTEGER,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createGakkaiKenshuV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.gakkaiKenshu.value} 
        (
          id TEXT PRIMARY KEY,
          shubetsu INTEGER NOT NULL,
          name TEXT NOT NULL,
          startDate TEXT NOT NULL,
          endDate TEXT NOT NULL,
          place TEXT,
          submissionDeadline1 TEXT,
          submissionDeadline2 TEXT,
          submissionTitle TEXT,
          submitted1 INTEGER,
          submitted2 INTEGER,
          type INTEGER,
          url TEXT,
          paymentManagementFlag INTEGER,
          paid INTEGER,
          paymentMemo TEXT,
          notifyId INTEGER NOT NULL,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createCategoryBetsuDataV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.categoryBetsuData.value} 
        (
          id TEXT PRIMARY KEY,
          date TEXT NOT NULL,
          category INTEGER NOT NULL,
          textShubetsu INTEGER NOT NULL,
          text TEXT NOT NULL,
          imagePath TEXT,
          musicPath TEXT,
          moviePath TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createCategoryBetsuDataAlarmV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.categoryBetsuDataAlarm.value} 
        (
          id TEXT PRIMARY KEY,
          category INTEGER NOT NULL,
          time TEXT NOT NULL,
          Monday INTEGER NOT NULL,
          Tuesday INTEGER NOT NULL,
          Wednessday INTEGER NOT NULL,
          Thursday INTEGER NOT NULL,
          Friday INTEGER NOT NULL,
          Saturday INTEGER NOT NULL,
          Sunday INTEGER NOT NULL,
          notifyId INTEGER NOT NULL,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createLicenseV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.license.value} 
        (
          id TEXT PRIMARY KEY,
          shubetsu INTEGER NOT NULL,
          name TEXT NOT NULL,
          fetchDate TEXT NOT NULL,
          certifiedNumber TEXT,
          imagePath TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createNenkaihiV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.nenkaihi.value} 
        (
          id TEXT PRIMARY KEY,
          gakkaiName TEXT NOT NULL,
          targetYear INTEGER NOT NULL,
          paid INTEGER NOT NULL,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createBusinessCardV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.businessCard.value} 
        (
          id TEXT PRIMARY KEY,
          cardShubetsu INTEGER NOT NULL,
          nameKana TEXT NOT NULL,
          name TEXT NOT NULL,
          roleOrQualificationName TEXT,
          affiliationNameKana TEXT,
          affiliationName TEXT,
          postalCode TEXT,
          prefectures INTEGER,
          address TEXT,
          telNum TEXT,
          mailAddress TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiBasicInfoV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiBasicInfo.value}
        (
          id TEXT PRIMARY KEY,
          name TEXT,
          nameKana TEXT,
          birthday TEXT,
          age INTEGER,
          gender TEXT,
          addressKana TEXT,
          address TEXT,
          postalCode TEXT,
          telNum TEXT,
          mailAddress TEXT,
          contactAddressKana TEXT,
          contactAddress TEXT,
          contactPostalCode TEXT,
          contactTelNum TEXT,
          contactMailAddress TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiBackGroundV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiBackGround.value}
        (
          id TEXT PRIMARY KEY,
          date TEXT,
          content TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiLicenseV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiLicense.value}
        (
          id TEXT PRIMARY KEY,
          date TEXT,
          name TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiRewardAndPunishmentV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiRewardAndPunishment.value}
        (
          id TEXT PRIMARY KEY,
          date TEXT,
          content TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiWishIncentiveV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiWishIncentive.value}
        (
          id TEXT PRIMARY KEY,
          content TEXT,
          commuteTime TEXT,
          dependent INTEGER,
          spouse INTEGER,
          supportingDuty INTEGER,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiDesiredEntriesFieldV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiDesiredEntriesField.value}
        (
          id TEXT PRIMARY KEY,
          content TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiDutyCareerDocumentV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiDutyCareerDocument.value}
        (
          id TEXT PRIMARY KEY,
          smallHeader TEXT,
          content TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiPerformanceBookV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiPerformanceBook.value}
        (
          id TEXT PRIMARY KEY,
          title TEXT,
          type INT,
          issuedDate TEXT,
          otherInfo TEXT,
          overview TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiPerformanceAcademicPaperV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiPerformanceAcademicPaper.value}
        (
          id TEXT PRIMARY KEY,
          title TEXT,
          type INT,
          issuedDate TEXT,
          otherInfo TEXT,
          overview TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiPerformancePresentaionV1(Batch batch) {
  batch.execute('''
        CREATE TABLE ${SqlTableName.rirekiPerformancePresentation.value}
        (
          id TEXT PRIMARY KEY,
          title TEXT,
          type INT,
          issuedDate TEXT,
          otherInfo TEXT,
          overview TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
        ''');
}

void _createRirekiOutputDateV1(Batch batch) {
  batch.execute('''
    CREATE TABLE ${SqlTableName.rirekiOutputDate.value}
        (
          id TEXT PRIMARY KEY,
          basicOutputDate TEXT,
          careerOutputDate TEXT,
          bookOutputDate TEXT,
          paperOutputDate TEXT,
          announcementOutputDate TEXT,
          updatedAt TEXT,
          createdAt TEXT
        );
  ''');
}
