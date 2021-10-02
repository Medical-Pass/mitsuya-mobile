import 'package:base_app/models/team/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_state.freezed.dart';

@freezed
class TeamState with _$TeamState {
  factory TeamState({
    @Default(<Team>[]) List<Team> data,
  }) = _TeamState;
}
