import 'package:cloud_firestore/cloud_firestore.dart';

/// ユーザ
class CoWork {
  final String id;
  final String name;
  final int? order;
  final int? teamNum;

  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  CoWork._(
    this.id,
    this.name,
    this.order,
    this.teamNum,
    this.createdAt,
    this.updatedAt,
  );

  factory CoWork.doc(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return CoWork._(
      doc.id,
      data['name'] as String,
      data['order'] as int?,
      data['teamNum'] as int?,
      data['createdAt'] as Timestamp?,
      data['updatedAt'] as Timestamp?,
    );
  }
}
