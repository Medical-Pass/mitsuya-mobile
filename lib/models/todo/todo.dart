import 'package:base_app/converters/bool_int_converter.dart';
import 'package:base_app/converters/date_time_string_converter.dart';
import 'package:base_app/repositories/sqflite/sql_table_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    required String id,
    required String text,
    @BoolIntConverter()
    @Default(false)
    @JsonKey(name: 'is_checked')
        bool isChecked,
    @DateTimeStringConverter() @JsonKey(name: 'created_at') DateTime? createdAt,
    @DateTimeStringConverter() @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Todo;
  Todo._();

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  String get title => '$id, $isChecked';

  static String get tableName => SqlTableName.todo.value;
}
