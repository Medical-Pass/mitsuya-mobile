import 'package:freezed_annotation/freezed_annotation.dart';

class BoolIntConverter implements JsonConverter<bool, int> {
  const BoolIntConverter();

  @override
  bool fromJson(int value) => value >= 1;

  @override
  int toJson(bool object) => object ? 1 : 0;
}
