// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpViewModelStateTearOff {
  const _$SignUpViewModelStateTearOff();

  _SignUpViewModelState call({String sample = ''}) {
    return _SignUpViewModelState(
      sample: sample,
    );
  }
}

/// @nodoc
const $SignUpViewModelState = _$SignUpViewModelStateTearOff();

/// @nodoc
mixin _$SignUpViewModelState {
  String get sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpViewModelStateCopyWith<SignUpViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpViewModelStateCopyWith<$Res> {
  factory $SignUpViewModelStateCopyWith(SignUpViewModelState value,
          $Res Function(SignUpViewModelState) then) =
      _$SignUpViewModelStateCopyWithImpl<$Res>;
  $Res call({String sample});
}

/// @nodoc
class _$SignUpViewModelStateCopyWithImpl<$Res>
    implements $SignUpViewModelStateCopyWith<$Res> {
  _$SignUpViewModelStateCopyWithImpl(this._value, this._then);

  final SignUpViewModelState _value;
  // ignore: unused_field
  final $Res Function(SignUpViewModelState) _then;

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
abstract class _$SignUpViewModelStateCopyWith<$Res>
    implements $SignUpViewModelStateCopyWith<$Res> {
  factory _$SignUpViewModelStateCopyWith(_SignUpViewModelState value,
          $Res Function(_SignUpViewModelState) then) =
      __$SignUpViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({String sample});
}

/// @nodoc
class __$SignUpViewModelStateCopyWithImpl<$Res>
    extends _$SignUpViewModelStateCopyWithImpl<$Res>
    implements _$SignUpViewModelStateCopyWith<$Res> {
  __$SignUpViewModelStateCopyWithImpl(
      _SignUpViewModelState _value, $Res Function(_SignUpViewModelState) _then)
      : super(_value, (v) => _then(v as _SignUpViewModelState));

  @override
  _SignUpViewModelState get _value => super._value as _SignUpViewModelState;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_SignUpViewModelState(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SignUpViewModelState implements _SignUpViewModelState {
  _$_SignUpViewModelState({this.sample = ''});

  @JsonKey(defaultValue: '')
  @override
  final String sample;

  @override
  String toString() {
    return 'SignUpViewModelState(sample: $sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpViewModelState &&
            (identical(other.sample, sample) ||
                const DeepCollectionEquality().equals(other.sample, sample)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sample);

  @JsonKey(ignore: true)
  @override
  _$SignUpViewModelStateCopyWith<_SignUpViewModelState> get copyWith =>
      __$SignUpViewModelStateCopyWithImpl<_SignUpViewModelState>(
          this, _$identity);
}

abstract class _SignUpViewModelState implements SignUpViewModelState {
  factory _SignUpViewModelState({String sample}) = _$_SignUpViewModelState;

  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpViewModelStateCopyWith<_SignUpViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
