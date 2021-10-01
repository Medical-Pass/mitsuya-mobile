import 'package:base_app/models/Cowork/Cowork.dart';
import 'package:base_app/repositories/cloud_firestore/cloud_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'cowork_state.dart';

final CoworkNotifierProvider =
    StateNotifierProvider.autoDispose<CoworkNotifier>(
        (ref) => CoworkNotifier(ref.read));

class CoworkNotifier extends StateNotifier<CoworkState> {
  CoworkNotifier(
    this._read,
  ) : super(CoworkState()) {
    fetchAll();
  }

  final Reader _read;

  CollectionReference _Coworks =
      FirebaseFirestore.instance.collection('Coworks');

  CloudFirestoreRepository get cloudFirestoreRepository =>
      _read(cloudFirestoreRepositoryProvider);

  Future<List<CoWork>> fetchAll() async {
    final _data = await cloudFirestoreRepository.getAll('Coworks',
        orderBy: 'order', descending: false);

    final data2 = _data.map((e) => CoWork.doc(e)).toList();

    state = state.copyWith(data: data2);
    return data2;
  }
}
