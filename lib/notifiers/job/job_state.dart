import 'package:base_app/models/job/job.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_state.freezed.dart';

@freezed
class JobState with _$JobState {
  factory JobState({
    @Default(<Job>[]) List<Job> data,
  }) = _JobState;
}
