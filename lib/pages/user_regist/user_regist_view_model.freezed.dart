// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_regist_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserRegistViewModelStateTearOff {
  const _$UserRegistViewModelStateTearOff();

  _UserRegistViewModelState call({String sample = ''}) {
    return _UserRegistViewModelState(
      sample: sample,
    );
  }
}

/// @nodoc
const $UserRegistViewModelState = _$UserRegistViewModelStateTearOff();

/// @nodoc
mixin _$UserRegistViewModelState {
  String get sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegistViewModelStateCopyWith<UserRegistViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistViewModelStateCopyWith<$Res> {
  factory $UserRegistViewModelStateCopyWith(UserRegistViewModelState value,
          $Res Function(UserRegistViewModelState) then) =
      _$UserRegistViewModelStateCopyWithImpl<$Res>;
  $Res call({String sample});
}

/// @nodoc
class _$UserRegistViewModelStateCopyWithImpl<$Res>
    implements $UserRegistViewModelStateCopyWith<$Res> {
  _$UserRegistViewModelStateCopyWithImpl(this._value, this._then);

  final UserRegistViewModelState _value;
  // ignore: unused_field
  final $Res Function(UserRegistViewModelState) _then;

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
abstract class _$UserRegistViewModelStateCopyWith<$Res>
    implements $UserRegistViewModelStateCopyWith<$Res> {
  factory _$UserRegistViewModelStateCopyWith(_UserRegistViewModelState value,
          $Res Function(_UserRegistViewModelState) then) =
      __$UserRegistViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({String sample});
}

/// @nodoc
class __$UserRegistViewModelStateCopyWithImpl<$Res>
    extends _$UserRegistViewModelStateCopyWithImpl<$Res>
    implements _$UserRegistViewModelStateCopyWith<$Res> {
  __$UserRegistViewModelStateCopyWithImpl(_UserRegistViewModelState _value,
      $Res Function(_UserRegistViewModelState) _then)
      : super(_value, (v) => _then(v as _UserRegistViewModelState));

  @override
  _UserRegistViewModelState get _value =>
      super._value as _UserRegistViewModelState;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_UserRegistViewModelState(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_UserRegistViewModelState implements _UserRegistViewModelState {
  _$_UserRegistViewModelState({this.sample = ''});

  @JsonKey(defaultValue: '')
  @override
  final String sample;

  @override
  String toString() {
    return 'UserRegistViewModelState(sample: $sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRegistViewModelState &&
            (identical(other.sample, sample) ||
                const DeepCollectionEquality().equals(other.sample, sample)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sample);

  @JsonKey(ignore: true)
  @override
  _$UserRegistViewModelStateCopyWith<_UserRegistViewModelState> get copyWith =>
      __$UserRegistViewModelStateCopyWithImpl<_UserRegistViewModelState>(
          this, _$identity);
}

abstract class _UserRegistViewModelState implements UserRegistViewModelState {
  factory _UserRegistViewModelState({String sample}) =
      _$_UserRegistViewModelState;

  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRegistViewModelStateCopyWith<_UserRegistViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}