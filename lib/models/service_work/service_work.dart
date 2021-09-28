import 'package:cloud_firestore/cloud_firestore.dart';

/// ユーザ
class ServiceWork {
  final String id;
  final String name;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  ServiceWork._(
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  );

  factory ServiceWork.doc(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ServiceWork._(
      doc.id,
      data['name'] as String,
      data['createdAt'] as Timestamp?,
      data['updatedAt'] as Timestamp?,
    );
  }
}