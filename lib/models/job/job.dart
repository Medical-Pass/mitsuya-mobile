import 'package:cloud_firestore/cloud_firestore.dart';

/// ユーザ
class Job {
  final String id;
  final String name;
  final int order;

  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  Job(
    this.id,
    this.name,
    this.order,
    this.createdAt,
    this.updatedAt,
  );

  factory Job.doc(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Job(
      doc.id,
      data['name'] as String,
      data['order'] as int,
      data['createdAt'] as Timestamp?,
      data['updatedAt'] as Timestamp?,
    );
  }
}
