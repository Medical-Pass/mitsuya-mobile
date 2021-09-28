// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$_$_TeamFromJson(Map<String, dynamic> json) {
  return _$_Team(
    id: json['id'] as String,
    name: json['name'] as String,
    serviceShort: json['serviceShort'] as String?,
    imageId: json['imageId'] as String?,
    genreId: json['genreId'] as String?,
    serviceWorkId: json['serviceWorkId'] as String?,
    coWorkGoalIds: (json['coWorkGoalIds'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    vision: json['vision'] as String?,
    background: json['background'] as String?,
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
      'serviceShort': instance.serviceShort,
      'imageId': instance.imageId,
      'genreId': instance.genreId,
      'serviceWorkId': instance.serviceWorkId,
      'coWorkGoalIds': instance.coWorkGoalIds,
      'vision': instance.vision,
      'background': instance.background,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
