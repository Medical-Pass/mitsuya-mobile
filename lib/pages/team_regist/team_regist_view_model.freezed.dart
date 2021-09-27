// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'team_regist_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TeamRegistViewModelStateTearOff {
  const _$TeamRegistViewModelStateTearOff();

  _TeamRegistViewModelState call({String sample = ''}) {
    return _TeamRegistViewModelState(
      sample: sample,
    );
  }
}

/// @nodoc
const $TeamRegistViewModelState = _$TeamRegistViewModelStateTearOff();

/// @nodoc
mixin _$TeamRegistViewModelState {
  String get sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamRegistViewModelStateCopyWith<TeamRegistViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamRegistViewModelStateCopyWith<$Res> {
  factory $TeamRegistViewModelStateCopyWith(TeamRegistViewModelState value,
          $Res Function(TeamRegistViewModelState) then) =
      _$TeamRegistViewModelStateCopyWithImpl<$Res>;
  $Res call({String sample});
}

/// @nodoc
class _$TeamRegistViewModelStateCopyWithImpl<$Res>
    implements $TeamRegistViewModelStateCopyWith<$Res> {
  _$TeamRegistViewModelStateCopyWithImpl(this._value, this._then);

  final TeamRegistViewModelState _value;
  // ignore: unused_field
  final $Res Function(TeamRegistViewModelState) _then;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_value.copyWith(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TeamRegistViewModelStateCopyWith<$Res>
    implements $TeamRegistViewModelStateCopyWith<$Res> {
  factory _$TeamRegistViewModelStateCopyWith(_TeamRegistViewModelState value,
          $Res Function(_TeamRegistViewModelState) then) =
      __$TeamRegistViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({String sample});
}

/// @nodoc
class __$TeamRegistViewModelStateCopyWithImpl<$Res>
    extends _$TeamRegistViewModelStateCopyWithImpl<$Res>
    implements _$TeamRegistViewModelStateCopyWith<$Res> {
  __$TeamRegistViewModelStateCopyWithImpl(_TeamRegistViewModelState _value,
      $Res Function(_TeamRegistViewModelState) _then)
      : super(_value, (v) => _then(v as _TeamRegistViewModelState));

  @override
  _TeamRegistViewModelState get _value =>
      super._value as _TeamRegistViewModelState;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_TeamRegistViewModelState(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_TeamRegistViewModelState implements _TeamRegistViewModelState {
  _$_TeamRegistViewModelState({this.sample = ''});

  @JsonKey(defaultValue: '')
  @override
  final String sample;

  @override
  String toString() {
    return 'TeamRegistViewModelState(sample: $sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeamRegistViewModelState &&
            (identical(other.sample, sample) ||
                const DeepCollectionEquality().equals(other.sample, sample)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sample);

  @JsonKey(ignore: true)
  @override
  _$TeamRegistViewModelStateCopyWith<_TeamRegistViewModelState> get copyWith =>
      __$TeamRegistViewModelStateCopyWithImpl<_TeamRegistViewModelState>(
          this, _$identity);
}

abstract class _TeamRegistViewModelState implements TeamRegistViewModelState {
  factory _TeamRegistViewModelState({String sample}) =
      _$_TeamRegistViewModelState;

  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamRegistViewModelStateCopyWith<_TeamRegistViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
