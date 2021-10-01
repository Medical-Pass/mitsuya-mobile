import 'package:base_app/models/role/role.dart';
import 'package:base_app/repositories/cloud_firestore/cloud_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'role_state.dart';

final roleNotifierProvider = StateNotifierProvider.autoDispose<RoleNotifier>(
    (ref) => RoleNotifier(ref.read));

class RoleNotifier extends StateNotifier<RoleState> {
  RoleNotifier(
    this._read,
  ) : super(RoleState()) {
    fetchAll();
  }

  final Reader _read;

  CollectionReference _roles = FirebaseFirestore.instance.collection('roles');

  CloudFirestoreRepository get cloudFirestoreRepository =>
      _read(cloudFirestoreRepositoryProvider);

  Future<List<Role>> fetchAll() async {
    final _data = await cloudFirestoreRepository.getAll('roles',
        orderBy: 'order', descending: false);

    final data2 = _data.map((e) => Role.doc(e)).toList();

    state = state.copyWith(data: data2);
    return data2;
  }
}
