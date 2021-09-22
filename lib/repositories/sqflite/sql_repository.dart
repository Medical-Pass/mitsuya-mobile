import 'package:sqflite/sqflite.dart';

abstract class SqlRepository {
  Batch get batch;
  Future<int> save(
    String tableName, {
    required Map<String, dynamic> data,
  });
  Future<int> transaction(
    String tableName,
    Future<int> Function(Transaction txn) action,
  );
  Future<int> update(
    String tableName, {
    required String id,
    required Map<String, dynamic> data,
  });

  Future<int> updateArgs(
    String tableName, {
    required Map<String, dynamic> data,
    required String where,
    required List<dynamic> whereArgs,
  });
  Future<Map<String, dynamic>?> getFromId(
    String tableName, {
    required String id,
  });
  Future<Map<String, dynamic>?> get(
    String tableName, {
    required String where,
    required List<dynamic> whereArgs,
  });
  Future<List<Map<String, dynamic>>> getAll(
    String tableName, {
    String? where,
    List<dynamic>? whereArgs,
    String? orderBy,
    int? limit,
    int? offset,
  });

  Future<int> getCount(
    String tableName, {
    String? rawWhere,
  });

  Future<int> getSum(
    String tableName, {
    required String column,
    String? rawWhere,
  });

  Future<List<Map<String, dynamic>>> getAllWithRawQuery(String rawQuery);
  Future<int> delete(
    String tableName, {
    required String id,
  });
  Future<int> deleteAll(String tableName);
}

class SqlRepositoryImpl implements SqlRepository {
  SqlRepositoryImpl(this._db);

  final Database _db;

  @override
  Batch get batch => _db.batch();

  @override
  Future<int> save(
    String tableName, {
    required Map<String, dynamic> data,
  }) async {
    return _db.insert(tableName, data);
  }

  @override
  Future<int> transaction(
    String tableName,
    Future<int> Function(Transaction txn) action,
  ) async {
    return _db.transaction(action);
  }

  @override
  Future<int> update(
    String tableName, {
    required String id,
    required Map<String, dynamic> data,
  }) async {
    return _db
        .update(tableName, data, where: 'id = ?', whereArgs: <String>[id]);
  }

  @override
  Future<int> updateArgs(
    String tableName, {
    required Map<String, dynamic> data,
    required String where,
    required List<dynamic> whereArgs,
  }) async {
    return _db.update(tableName, data, where: where, whereArgs: whereArgs);
  }

  @override
  Future<Map<String, dynamic>?> getFromId(
    String tableName, {
    required String id,
  }) async {
    final res = await _db.query(tableName, where: 'id = ?', whereArgs: [id]);
    return res.isNotEmpty ? res.first : null;
  }

  @override
  Future<Map<String, dynamic>?> get(
    String tableName, {
    required String where,
    required List<dynamic> whereArgs,
  }) async {
    final res = await _db.query(tableName, where: where, whereArgs: whereArgs);
    return res.isNotEmpty ? res.first : null;
  }

  @override
  Future<List<Map<String, dynamic>>> getAll(
    String tableName, {
    String? where,
    List<dynamic>? whereArgs,
    String? orderBy,
    int? limit,
    int? offset,
  }) async {
    final res = await _db.query(tableName,
        where: where,
        whereArgs: whereArgs,
        orderBy: orderBy,
        limit: limit,
        offset: offset);
    return res.isNotEmpty ? res.toList() : [];
  }

  @override
  Future<int> getCount(
    String tableName, {
    String? rawWhere,
  }) async {
    final query =
        // ignore: lines_longer_than_80_chars
        'SELECT COUNT(*) AS S FROM $tableName ${rawWhere != null ? 'WHERE $rawWhere;' : ';'}';
    final res = await _db.rawQuery(query);
    if (res.isNotEmpty) {
      final value = res.first['S'] as int?;
      if (value != null) {
        return value;
      }
    }
    return 0;
  }

  @override
  Future<int> getSum(
    String tableName, {
    required String column,
    String? rawWhere,
  }) async {
    final query =
        // ignore: lines_longer_than_80_chars
        'SELECT SUM($column) AS S FROM $tableName ${rawWhere != null ? 'WHERE $rawWhere;' : ';'}';
    final res = await _db.rawQuery(query);
    if (res.isNotEmpty) {
      final value = res.first['S'] as int?;
      if (value != null) {
        return value;
      }
    }
    return 0;
  }

  @override
  Future<List<Map<String, dynamic>>> getAllWithRawQuery(String rawQuery) async {
    final res = await _db.rawQuery(rawQuery);
    return res.isNotEmpty ? res.toList() : [];
  }

  @override
  Future<int> delete(
    String tableName, {
    required String id,
  }) async {
    return _db.delete(tableName, where: 'id = ?', whereArgs: <String>[id]);
  }

  @override
  Future<int> deleteAll(String tableName) async {
    return _db.rawDelete('Delete * from $tableName;');
  }
}
