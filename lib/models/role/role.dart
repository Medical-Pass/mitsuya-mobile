import 'package:cloud_firestore/cloud_firestore.dart';

/// ユーザ
class Role {
  final String id;
  final String name;
  final int order;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  Role(
    this.id,
    this.name,
    this.order,
    this.createdAt,
    this.updatedAt,
  );

  factory Role.doc(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Role(
      doc.id,
      data['name'] as String,
      data['order'] as int,
      data['createdAt'] as Timestamp?,
      data['updatedAt'] as Timestamp?,
    );
  }
}
