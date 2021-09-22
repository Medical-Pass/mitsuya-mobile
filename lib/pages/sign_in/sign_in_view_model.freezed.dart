// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInViewModelStateTearOff {
  const _$SignInViewModelStateTearOff();

  _SignInViewModelState call({String sample = ''}) {
    return _SignInViewModelState(
      sample: sample,
    );
  }
}

/// @nodoc
const $SignInViewModelState = _$SignInViewModelStateTearOff();

/// @nodoc
mixin _$SignInViewModelState {
  String get sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInViewModelStateCopyWith<SignInViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInViewModelStateCopyWith<$Res> {
  factory $SignInViewModelStateCopyWith(SignInViewModelState value,
          $Res Function(SignInViewModelState) then) =
      _$SignInViewModelStateCopyWithImpl<$Res>;
  $Res call({String sample});
}

/// @nodoc
class _$SignInViewModelStateCopyWithImpl<$Res>
    implements $SignInViewModelStateCopyWith<$Res> {
  _$SignInViewModelStateCopyWithImpl(this._value, this._then);

  final SignInViewModelState _value;
  // ignore: unused_field
  final $Res Function(SignInViewModelState) _then;

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
abstract class _$SignInViewModelStateCopyWith<$Res>
    implements $SignInViewModelStateCopyWith<$Res> {
  factory _$SignInViewModelStateCopyWith(_SignInViewModelState value,
          $Res Function(_SignInViewModelState) then) =
      __$SignInViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({String sample});
}

/// @nodoc
class __$SignInViewModelStateCopyWithImpl<$Res>
    extends _$SignInViewModelStateCopyWithImpl<$Res>
    implements _$SignInViewModelStateCopyWith<$Res> {
  __$SignInViewModelStateCopyWithImpl(
      _SignInViewModelState _value, $Res Function(_SignInViewModelState) _then)
      : super(_value, (v) => _then(v as _SignInViewModelState));

  @override
  _SignInViewModelState get _value => super._value as _SignInViewModelState;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_SignInViewModelState(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SignInViewModelState implements _SignInViewModelState {
  _$_SignInViewModelState({this.sample = ''});

  @JsonKey(defaultValue: '')
  @override
  final String sample;

  @override
  String toString() {
    return 'SignInViewModelState(sample: $sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInViewModelState &&
            (identical(other.sample, sample) ||
                const DeepCollectionEquality().equals(other.sample, sample)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sample);

  @JsonKey(ignore: true)
  @override
  _$SignInViewModelStateCopyWith<_SignInViewModelState> get copyWith =>
      __$SignInViewModelStateCopyWithImpl<_SignInViewModelState>(
          this, _$identity);
}

abstract class _SignInViewModelState implements SignInViewModelState {
  factory _SignInViewModelState({String sample}) = _$_SignInViewModelState;

  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInViewModelStateCopyWith<_SignInViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
