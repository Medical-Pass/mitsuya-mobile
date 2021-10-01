// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'role_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoleStateTearOff {
  const _$RoleStateTearOff();

  _RoleState call({List<Role> data = const <Role>[]}) {
    return _RoleState(
      data: data,
    );
  }
}

/// @nodoc
const $RoleState = _$RoleStateTearOff();

/// @nodoc
mixin _$RoleState {
  List<Role> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleStateCopyWith<RoleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res>;
  $Res call({List<Role> data});
}

/// @nodoc
class _$RoleStateCopyWithImpl<$Res> implements $RoleStateCopyWith<$Res> {
  _$RoleStateCopyWithImpl(this._value, this._then);

  final RoleState _value;
  // ignore: unused_field
  final $Res Function(RoleState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}

/// @nodoc
abstract class _$RoleStateCopyWith<$Res> implements $RoleStateCopyWith<$Res> {
  factory _$RoleStateCopyWith(
          _RoleState value, $Res Function(_RoleState) then) =
      __$RoleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Role> data});
}

/// @nodoc
class __$RoleStateCopyWithImpl<$Res> extends _$RoleStateCopyWithImpl<$Res>
    implements _$RoleStateCopyWith<$Res> {
  __$RoleStateCopyWithImpl(_RoleState _value, $Res Function(_RoleState) _then)
      : super(_value, (v) => _then(v as _RoleState));

  @override
  _RoleState get _value => super._value as _RoleState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_RoleState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}

/// @nodoc
class _$_RoleState implements _RoleState {
  _$_RoleState({this.data = const <Role>[]});

  @JsonKey(defaultValue: const <Role>[])
  @override
  final List<Role> data;

  @override
  String toString() {
    return 'RoleState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoleState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$RoleStateCopyWith<_RoleState> get copyWith =>
      __$RoleStateCopyWithImpl<_RoleState>(this, _$identity);
}

abstract class _RoleState implements RoleState {
  factory _RoleState({List<Role> data}) = _$_RoleState;

  @override
  List<Role> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoleStateCopyWith<_RoleState> get copyWith =>
      throw _privateConstructorUsedError;
}
