// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'genre_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenreStateTearOff {
  const _$GenreStateTearOff();

  _GenreState call({List<Genre> data = const <Genre>[]}) {
    return _GenreState(
      data: data,
    );
  }
}

/// @nodoc
const $GenreState = _$GenreStateTearOff();

/// @nodoc
mixin _$GenreState {
  List<Genre> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenreStateCopyWith<GenreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreStateCopyWith<$Res> {
  factory $GenreStateCopyWith(
          GenreState value, $Res Function(GenreState) then) =
      _$GenreStateCopyWithImpl<$Res>;
  $Res call({List<Genre> data});
}

/// @nodoc
class _$GenreStateCopyWithImpl<$Res> implements $GenreStateCopyWith<$Res> {
  _$GenreStateCopyWithImpl(this._value, this._then);

  final GenreState _value;
  // ignore: unused_field
  final $Res Function(GenreState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
abstract class _$GenreStateCopyWith<$Res> implements $GenreStateCopyWith<$Res> {
  factory _$GenreStateCopyWith(
          _GenreState value, $Res Function(_GenreState) then) =
      __$GenreStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Genre> data});
}

/// @nodoc
class __$GenreStateCopyWithImpl<$Res> extends _$GenreStateCopyWithImpl<$Res>
    implements _$GenreStateCopyWith<$Res> {
  __$GenreStateCopyWithImpl(
      _GenreState _value, $Res Function(_GenreState) _then)
      : super(_value, (v) => _then(v as _GenreState));

  @override
  _GenreState get _value => super._value as _GenreState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GenreState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
class _$_GenreState implements _GenreState {
  _$_GenreState({this.data = const <Genre>[]});

  @JsonKey(defaultValue: const <Genre>[])
  @override
  final List<Genre> data;

  @override
  String toString() {
    return 'GenreState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GenreStateCopyWith<_GenreState> get copyWith =>
      __$GenreStateCopyWithImpl<_GenreState>(this, _$identity);
}

abstract class _GenreState implements GenreState {
  factory _GenreState({List<Genre> data}) = _$_GenreState;

  @override
  List<Genre> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GenreStateCopyWith<_GenreState> get copyWith =>
      throw _privateConstructorUsedError;
}
