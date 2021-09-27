// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$_$_TeamFromJson(Map<String, dynamic> json) {
  return _$_Team(
    id: json['id'] as String,
    name: json['name'] as String,
    birthday: json['birthday'] == null
        ? null
        : DateTime.parse(json['birthday'] as String),
    gender: json['gender'] as String?,
    role: json['role'] as String?,
    job: json['job'] as String?,
    passionForService: json['passionForService'] as String?,
    comment: json['comment'] as String?,
    teamId: json['teamId'] as String?,
    executiveId: json['executiveId'] as String?,
    inviteMember: json['inviteMember'] as bool?,
    checkNotification: json['checkNotification'] as bool?,
    transparency: json['transparency'] as bool?,
    isChecked: const BoolIntConverter().fromJson(json['is_checked'] as int),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$_$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday?.toIso8601String(),
      'gender': instance.gender,
      'role': instance.role,
      'job': instance.job,
      'passionForService': instance.passionForService,
      'comment': instance.comment,
      'teamId': instance.teamId,
      'executiveId': instance.executiveId,
      'inviteMember': instance.inviteMember,
      'checkNotification': instance.checkNotification,
      'transparency': instance.transparency,
      'is_checked': const BoolIntConverter().toJson(instance.isChecked),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
