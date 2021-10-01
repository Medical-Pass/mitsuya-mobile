import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_state.freezed.dart';

@freezed
class JobState with _$JobState {
  factory JobState({
    String? name,
  }) = _JobState;
}
