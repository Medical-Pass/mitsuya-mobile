// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service_work_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceWorkStateTearOff {
  const _$ServiceWorkStateTearOff();

  _ServiceWorkState call({List<ServiceWork> data = const <ServiceWork>[]}) {
    return _ServiceWorkState(
      data: data,
    );
  }
}

/// @nodoc
const $ServiceWorkState = _$ServiceWorkStateTearOff();

/// @nodoc
mixin _$ServiceWorkState {
  List<ServiceWork> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceWorkStateCopyWith<ServiceWorkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceWorkStateCopyWith<$Res> {
  factory $ServiceWorkStateCopyWith(
          ServiceWorkState value, $Res Function(ServiceWorkState) then) =
      _$ServiceWorkStateCopyWithImpl<$Res>;
  $Res call({List<ServiceWork> data});
}

/// @nodoc
class _$ServiceWorkStateCopyWithImpl<$Res>
    implements $ServiceWorkStateCopyWith<$Res> {
  _$ServiceWorkStateCopyWithImpl(this._value, this._then);

  final ServiceWorkState _value;
  // ignore: unused_field
  final $Res Function(ServiceWorkState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServiceWork>,
    ));
  }
}

/// @nodoc
abstract class _$ServiceWorkStateCopyWith<$Res>
    implements $ServiceWorkStateCopyWith<$Res> {
  factory _$ServiceWorkStateCopyWith(
          _ServiceWorkState value, $Res Function(_ServiceWorkState) then) =
      __$ServiceWorkStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ServiceWork> data});
}

/// @nodoc
class __$ServiceWorkStateCopyWithImpl<$Res>
    extends _$ServiceWorkStateCopyWithImpl<$Res>
    implements _$ServiceWorkStateCopyWith<$Res> {
  __$ServiceWorkStateCopyWithImpl(
      _ServiceWorkState _value, $Res Function(_ServiceWorkState) _then)
      : super(_value, (v) => _then(v as _ServiceWorkState));

  @override
  _ServiceWorkState get _value => super._value as _ServiceWorkState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ServiceWorkState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServiceWork>,
    ));
  }
}

/// @nodoc
class _$_ServiceWorkState implements _ServiceWorkState {
  _$_ServiceWorkState({this.data = const <ServiceWork>[]});

  @JsonKey(defaultValue: const <ServiceWork>[])
  @override
  final List<ServiceWork> data;

  @override
  String toString() {
    return 'ServiceWorkState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceWorkState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ServiceWorkStateCopyWith<_ServiceWorkState> get copyWith =>
      __$ServiceWorkStateCopyWithImpl<_ServiceWorkState>(this, _$identity);
}

abstract class _ServiceWorkState implements ServiceWorkState {
  factory _ServiceWorkState({List<ServiceWork> data}) = _$_ServiceWorkState;

  @override
  List<ServiceWork> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServiceWorkStateCopyWith<_ServiceWorkState> get copyWith =>
      throw _privateConstructorUsedError;
}
