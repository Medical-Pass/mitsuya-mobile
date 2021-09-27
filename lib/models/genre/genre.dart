import 'package:cloud_firestore/cloud_firestore.dart';

/// ユーザ
class Genre {
  final String id;
  final String name;
  final Timestamp createdAt;
  final Timestamp updatedAt;

  Genre._(
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  );

  factory Genre.doc(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Genre._(
      doc.id,
      data['name'] as String,
      data['createdAt'] as Timestamp,
      data['updatedAt'] as Timestamp,
    );
  }
}
