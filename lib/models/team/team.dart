import 'package:base_app/converters/bool_int_converter.dart';
import 'package:base_app/converters/date_time_string_converter.dart';
import 'package:base_app/repositories/sqflite/sql_table_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  factory Team({
    required String id,
    required String name,
    DateTime? birthday,
    String? gender,
    String? role,
    String? job,
    String? passionForService,
    String? comment,
    String? teamId,
    String? executiveId,
    bool? inviteMember,
    bool? checkNotification,
    bool? transparency,
    @BoolIntConverter()
    @Default(false)
    @JsonKey(name: 'is_checked')
        bool isChecked,
    @DateTimeStringConverter() @JsonKey(name: 'created_at') DateTime? createdAt,
    @DateTimeStringConverter() @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Team;
  Team._();

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  String get title => '$id, $isChecked';

  static String get tableName => SqlTableName.todo.value;
}
