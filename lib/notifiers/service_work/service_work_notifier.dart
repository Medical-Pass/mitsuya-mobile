import 'package:base_app/models/service_work/service_work.dart';
import 'package:base_app/repositories/cloud_firestore/cloud_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'service_work_state.dart';

final serviceWorkNotifierProvider =
    StateNotifierProvider.autoDispose<ServiceWorkNotifier>(
        (ref) => ServiceWorkNotifier(ref.read));

class ServiceWorkNotifier extends StateNotifier<ServiceWorkState> {
  ServiceWorkNotifier(
    this._read,
  ) : super(ServiceWorkState()) {
    Future.delayed(Duration.zero, () async {
      await fetchAll();
    });
  }

  final Reader _read;

  CollectionReference _serviceWorks =
      FirebaseFirestore.instance.collection('serviceWorks');

  CloudFirestoreRepository get cloudFirestoreRepository =>
      _read(cloudFirestoreRepositoryProvider);

  Future<List<ServiceWork>> fetchAll() async {
    final _data = await cloudFirestoreRepository.getAll('serviceWorks',
        orderBy: 'order', descending: false);

    final data2 = _data.map((e) => ServiceWork.doc(e)).toList();

    state = state.copyWith(data: data2);
    return data2;
  }
}
