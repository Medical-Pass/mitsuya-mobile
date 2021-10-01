// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'talk_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TalkViewModelStateTearOff {
  const _$TalkViewModelStateTearOff();

  _TalkViewModelState call({String sample = ''}) {
    return _TalkViewModelState(
      sample: sample,
    );
  }
}

/// @nodoc
const $TalkViewModelState = _$TalkViewModelStateTearOff();

/// @nodoc
mixin _$TalkViewModelState {
  String get sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TalkViewModelStateCopyWith<TalkViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkViewModelStateCopyWith<$Res> {
  factory $TalkViewModelStateCopyWith(
          TalkViewModelState value, $Res Function(TalkViewModelState) then) =
      _$TalkViewModelStateCopyWithImpl<$Res>;
  $Res call({String sample});
}

/// @nodoc
class _$TalkViewModelStateCopyWithImpl<$Res>
    implements $TalkViewModelStateCopyWith<$Res> {
  _$TalkViewModelStateCopyWithImpl(this._value, this._then);

  final TalkViewModelState _value;
  // ignore: unused_field
  final $Res Function(TalkViewModelState) _then;

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
abstract class _$TalkViewModelStateCopyWith<$Res>
    implements $TalkViewModelStateCopyWith<$Res> {
  factory _$TalkViewModelStateCopyWith(
          _TalkViewModelState value, $Res Function(_TalkViewModelState) then) =
      __$TalkViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({String sample});
}

/// @nodoc
class __$TalkViewModelStateCopyWithImpl<$Res>
    extends _$TalkViewModelStateCopyWithImpl<$Res>
    implements _$TalkViewModelStateCopyWith<$Res> {
  __$TalkViewModelStateCopyWithImpl(
      _TalkViewModelState _value, $Res Function(_TalkViewModelState) _then)
      : super(_value, (v) => _then(v as _TalkViewModelState));

  @override
  _TalkViewModelState get _value => super._value as _TalkViewModelState;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_TalkViewModelState(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_TalkViewModelState implements _TalkViewModelState {
  _$_TalkViewModelState({this.sample = ''});

  @JsonKey(defaultValue: '')
  @override
  final String sample;

  @override
  String toString() {
    return 'TalkViewModelState(sample: $sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TalkViewModelState &&
            (identical(other.sample, sample) ||
                const DeepCollectionEquality().equals(other.sample, sample)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sample);

  @JsonKey(ignore: true)
  @override
  _$TalkViewModelStateCopyWith<_TalkViewModelState> get copyWith =>
      __$TalkViewModelStateCopyWithImpl<_TalkViewModelState>(this, _$identity);
}

abstract class _TalkViewModelState implements TalkViewModelState {
  factory _TalkViewModelState({String sample}) = _$_TalkViewModelState;

  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TalkViewModelStateCopyWith<_TalkViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
