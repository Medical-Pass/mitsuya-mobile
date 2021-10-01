import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cloudFirestoreRepositoryProvider =
    Provider<CloudFirestoreRepository>((_) => CloudFirestoreRepositoryImpl());

abstract class CloudFirestoreRepository {
  Future<int> save(
    String tableName, {
    required Map<String, dynamic> data,
  });

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
  Future<List<QueryDocumentSnapshot<dynamic>>> getAll(
    String tableName, {
    String? where,
    List<dynamic>? whereArgs,
    String orderBy,
    bool descending,
    int limit,
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

class CloudFirestoreRepositoryImpl implements CloudFirestoreRepository {
  CloudFirestoreRepositoryImpl();

  @override
  Future<int> delete(String tableName, {required String id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<int> deleteAll(String tableName) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>?> get(String tableName,
      {required String where, required List whereArgs}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<QueryDocumentSnapshot<dynamic>>> getAll(String tableName,
      {String? where,
      List? whereArgs,
      String orderBy = 'createdAt',
      bool descending = true,
      int limit = 1000,
      int? offset}) async {
    final snapshot = await FirebaseFirestore.instance
        .collection(tableName)
        .orderBy(orderBy, descending: descending)
        .limit(limit)
        .get();

    return snapshot.docs;
  }

  @override
  Future<List<Map<String, dynamic>>> getAllWithRawQuery(String rawQuery) {
    // TODO: implement getAllWithRawQuery
    throw UnimplementedError();
  }

  @override
  Future<int> getCount(String tableName, {String? rawWhere}) {
    // TODO: implement getCount
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>?> getFromId(String tableName,
      {required String id}) {
    // TODO: implement getFromId
    throw UnimplementedError();
  }

  @override
  Future<int> getSum(String tableName,
      {required String column, String? rawWhere}) {
    // TODO: implement getSum
    throw UnimplementedError();
  }

  @override
  Future<int> save(String tableName, {required Map<String, dynamic> data}) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<int> update(String tableName,
      {required String id, required Map<String, dynamic> data}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<int> updateArgs(String tableName,
      {required Map<String, dynamic> data,
      required String where,
      required List whereArgs}) {
    // TODO: implement updateArgs
    throw UnimplementedError();
  }
}
