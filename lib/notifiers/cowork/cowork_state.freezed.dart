// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cowork_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoworkStateTearOff {
  const _$CoworkStateTearOff();

  _CoworkState call({List<CoWork> data = const <CoWork>[]}) {
    return _CoworkState(
      data: data,
    );
  }
}

/// @nodoc
const $CoworkState = _$CoworkStateTearOff();

/// @nodoc
mixin _$CoworkState {
  List<CoWork> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoworkStateCopyWith<CoworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoworkStateCopyWith<$Res> {
  factory $CoworkStateCopyWith(
          CoworkState value, $Res Function(CoworkState) then) =
      _$CoworkStateCopyWithImpl<$Res>;
  $Res call({List<CoWork> data});
}

/// @nodoc
class _$CoworkStateCopyWithImpl<$Res> implements $CoworkStateCopyWith<$Res> {
  _$CoworkStateCopyWithImpl(this._value, this._then);

  final CoworkState _value;
  // ignore: unused_field
  final $Res Function(CoworkState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoWork>,
    ));
  }
}

/// @nodoc
abstract class _$CoworkStateCopyWith<$Res>
    implements $CoworkStateCopyWith<$Res> {
  factory _$CoworkStateCopyWith(
          _CoworkState value, $Res Function(_CoworkState) then) =
      __$CoworkStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CoWork> data});
}

/// @nodoc
class __$CoworkStateCopyWithImpl<$Res> extends _$CoworkStateCopyWithImpl<$Res>
    implements _$CoworkStateCopyWith<$Res> {
  __$CoworkStateCopyWithImpl(
      _CoworkState _value, $Res Function(_CoworkState) _then)
      : super(_value, (v) => _then(v as _CoworkState));

  @override
  _CoworkState get _value => super._value as _CoworkState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_CoworkState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoWork>,
    ));
  }
}

/// @nodoc
class _$_CoworkState implements _CoworkState {
  _$_CoworkState({this.data = const <CoWork>[]});

  @JsonKey(defaultValue: const <CoWork>[])
  @override
  final List<CoWork> data;

  @override
  String toString() {
    return 'CoworkState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoworkState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CoworkStateCopyWith<_CoworkState> get copyWith =>
      __$CoworkStateCopyWithImpl<_CoworkState>(this, _$identity);
}

abstract class _CoworkState implements CoworkState {
  factory _CoworkState({List<CoWork> data}) = _$_CoworkState;

  @override
  List<CoWork> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoworkStateCopyWith<_CoworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
