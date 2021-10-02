import 'package:base_app/models/job/job.dart';
import 'package:base_app/repositories/cloud_firestore/cloud_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'job_state.dart';

final jobNotifierProvider = StateNotifierProvider.autoDispose<JobNotifier>(
    (ref) => JobNotifier(ref.read));

class JobNotifier extends StateNotifier<JobState> {
  JobNotifier(
    this._read,
  ) : super(JobState()) {
    fetchAll();
  }

  final Reader _read;

  CollectionReference _jobs = FirebaseFirestore.instance.collection('jobs');

  CloudFirestoreRepository get cloudFirestoreRepository =>
      _read(cloudFirestoreRepositoryProvider);

  Future<List<Job>> fetchAll() async {
    final _data = await cloudFirestoreRepository.getAll('jobs',
        orderBy: 'order', descending: false);

    final data2 = _data.map((e) => Job.doc(e)).toList();

    state = state.copyWith(data: data2);
    return data2;
  }

  // Future<Job?> getFromId(String id) async {
  //   final _data = await sqlRepository.getFromId(Job.tableName, id: id);
  //   if (_data == null) {
  //     return null;
  //   }
  //   return Job.fromJson(_data);
  // }

  // Future<void> onSave(String name, int order) async {
  //   final now = DateTime.now();
  //   // final data = Job(id: const Uuid().v4(), createdAt: now, updatedAt: now);
  //
  //   final data = Job(
  //       id: Uuid().v4(),
  //       name: name,
  //       order: order,
  //       createdAt: now,
  //       updatedAt: now);
  //
  //   await _jobs
  //       .add({
  //         'name': name,
  //         'createdAt': now,
  //         'updatedAt': now,
  //       })
  //       .then((value) => logger.info("job Added"))
  //       .catchError((Object error) => logger.info("Failed to add job: $error"));
  //
  //   state = state.copyWith(data: state.data.toList()..insert(0, data));
  // }
}
