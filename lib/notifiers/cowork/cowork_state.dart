import 'package:base_app/models/cowork/cowork.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cowork_state.freezed.dart';

@freezed
class CoworkState with _$CoworkState {
  factory CoworkState({
    @Default(<CoWork>[]) List<CoWork> data,
  }) = _CoworkState;
}
