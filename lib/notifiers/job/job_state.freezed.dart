// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'job_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JobStateTearOff {
  const _$JobStateTearOff();

  _JobState call({List<Job> data = const <Job>[]}) {
    return _JobState(
      data: data,
    );
  }
}

/// @nodoc
const $JobState = _$JobStateTearOff();

/// @nodoc
mixin _$JobState {
  List<Job> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobStateCopyWith<JobState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStateCopyWith<$Res> {
  factory $JobStateCopyWith(JobState value, $Res Function(JobState) then) =
      _$JobStateCopyWithImpl<$Res>;
  $Res call({List<Job> data});
}

/// @nodoc
class _$JobStateCopyWithImpl<$Res> implements $JobStateCopyWith<$Res> {
  _$JobStateCopyWithImpl(this._value, this._then);

  final JobState _value;
  // ignore: unused_field
  final $Res Function(JobState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc
abstract class _$JobStateCopyWith<$Res> implements $JobStateCopyWith<$Res> {
  factory _$JobStateCopyWith(_JobState value, $Res Function(_JobState) then) =
      __$JobStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Job> data});
}

/// @nodoc
class __$JobStateCopyWithImpl<$Res> extends _$JobStateCopyWithImpl<$Res>
    implements _$JobStateCopyWith<$Res> {
  __$JobStateCopyWithImpl(_JobState _value, $Res Function(_JobState) _then)
      : super(_value, (v) => _then(v as _JobState));

  @override
  _JobState get _value => super._value as _JobState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_JobState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc
class _$_JobState implements _JobState {
  _$_JobState({this.data = const <Job>[]});

  @JsonKey(defaultValue: const <Job>[])
  @override
  final List<Job> data;

  @override
  String toString() {
    return 'JobState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$JobStateCopyWith<_JobState> get copyWith =>
      __$JobStateCopyWithImpl<_JobState>(this, _$identity);
}

abstract class _JobState implements JobState {
  factory _JobState({List<Job> data}) = _$_JobState;

  @override
  List<Job> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JobStateCopyWith<_JobState> get copyWith =>
      throw _privateConstructorUsedError;
}
