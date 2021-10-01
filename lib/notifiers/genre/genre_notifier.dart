import 'package:base_app/models/genre/genre.dart';
import 'package:base_app/repositories/cloud_firestore/cloud_firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'genre_state.dart';

final genreNotifierProvider = StateNotifierProvider.autoDispose<GenreNotifier>(
    (ref) => GenreNotifier(ref.read));

class GenreNotifier extends StateNotifier<GenreState> {
  GenreNotifier(
    this._read,
  ) : super(GenreState()) {
    fetchAll();
  }

  final Reader _read;

  CollectionReference _genres = FirebaseFirestore.instance.collection('genres');

  CloudFirestoreRepository get cloudFirestoreRepository =>
      _read(cloudFirestoreRepositoryProvider);

  Future<List<Genre>> fetchAll() async {
    final _data = await cloudFirestoreRepository.getAll('jobs',
        orderBy: 'order', descending: false);

    final data2 = _data.map((e) => Genre.doc(e)).toList();

    state = state.copyWith(data: data2);
    return data2;
  }
}
