import 'package:base_app/models/role/role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_state.freezed.dart';

@freezed
class RoleState with _$RoleState {
  factory RoleState({
    @Default(<Role>[]) List<Role> data,
  }) = _RoleState;
}
