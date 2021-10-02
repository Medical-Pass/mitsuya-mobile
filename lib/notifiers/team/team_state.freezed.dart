// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'team_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TeamStateTearOff {
  const _$TeamStateTearOff();

  _TeamState call({List<Team> data = const <Team>[]}) {
    return _TeamState(
      data: data,
    );
  }
}

/// @nodoc
const $TeamState = _$TeamStateTearOff();

/// @nodoc
mixin _$TeamState {
  List<Team> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamStateCopyWith<TeamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStateCopyWith<$Res> {
  factory $TeamStateCopyWith(TeamState value, $Res Function(TeamState) then) =
      _$TeamStateCopyWithImpl<$Res>;
  $Res call({List<Team> data});
}

/// @nodoc
class _$TeamStateCopyWithImpl<$Res> implements $TeamStateCopyWith<$Res> {
  _$TeamStateCopyWithImpl(this._value, this._then);

  final TeamState _value;
  // ignore: unused_field
  final $Res Function(TeamState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ));
  }
}

/// @nodoc
abstract class _$TeamStateCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory _$TeamStateCopyWith(
          _TeamState value, $Res Function(_TeamState) then) =
      __$TeamStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Team> data});
}

/// @nodoc
class __$TeamStateCopyWithImpl<$Res> extends _$TeamStateCopyWithImpl<$Res>
    implements _$TeamStateCopyWith<$Res> {
  __$TeamStateCopyWithImpl(_TeamState _value, $Res Function(_TeamState) _then)
      : super(_value, (v) => _then(v as _TeamState));

  @override
  _TeamState get _value => super._value as _TeamState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_TeamState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Team>,
    ));
  }
}

/// @nodoc
class _$_TeamState implements _TeamState {
  _$_TeamState({this.data = const <Team>[]});

  @JsonKey(defaultValue: const <Team>[])
  @override
  final List<Team> data;

  @override
  String toString() {
    return 'TeamState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeamState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$TeamStateCopyWith<_TeamState> get copyWith =>
      __$TeamStateCopyWithImpl<_TeamState>(this, _$identity);
}

abstract class _TeamState implements TeamState {
  factory _TeamState({List<Team> data}) = _$_TeamState;

  @override
  List<Team> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamStateCopyWith<_TeamState> get copyWith =>
      throw _privateConstructorUsedError;
}
