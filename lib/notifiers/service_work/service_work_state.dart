import 'package:base_app/models/service_work/service_work.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_work_state.freezed.dart';

@freezed
class ServiceWorkState with _$ServiceWorkState {
  factory ServiceWorkState({
    @Default(<ServiceWork>[]) List<ServiceWork> data,
  }) = _ServiceWorkState;
}
