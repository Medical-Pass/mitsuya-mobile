import 'package:freezed_annotation/freezed_annotation.dart';

class IntStringConverter implements JsonConverter<DateTime, String> {
  const IntStringConverter();

  @override
  DateTime fromJson(String value) => DateTime.parse(value).toLocal();

  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();

  int getIntPoint(String pointStr) {
    print(pointStr.replaceAll('（', '').replaceAll('）', ''));
    return int.parse(pointStr
        .replaceAll('（', '')
        .replaceAll('）', '')
        .replaceAll('(', '')
        .replaceAll(')', ''));
  }
}
