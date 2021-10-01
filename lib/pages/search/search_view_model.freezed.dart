// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchViewModelStateTearOff {
  const _$SearchViewModelStateTearOff();

  _SearchViewModelState call({String sample = ''}) {
    return _SearchViewModelState(
      sample: sample,
    );
  }
}

/// @nodoc
const $SearchViewModelState = _$SearchViewModelStateTearOff();

/// @nodoc
mixin _$SearchViewModelState {
  String get sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchViewModelStateCopyWith<SearchViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchViewModelStateCopyWith<$Res> {
  factory $SearchViewModelStateCopyWith(SearchViewModelState value,
          $Res Function(SearchViewModelState) then) =
      _$SearchViewModelStateCopyWithImpl<$Res>;
  $Res call({String sample});
}

/// @nodoc
class _$SearchViewModelStateCopyWithImpl<$Res>
    implements $SearchViewModelStateCopyWith<$Res> {
  _$SearchViewModelStateCopyWithImpl(this._value, this._then);

  final SearchViewModelState _value;
  // ignore: unused_field
  final $Res Function(SearchViewModelState) _then;

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
abstract class _$SearchViewModelStateCopyWith<$Res>
    implements $SearchViewModelStateCopyWith<$Res> {
  factory _$SearchViewModelStateCopyWith(_SearchViewModelState value,
          $Res Function(_SearchViewModelState) then) =
      __$SearchViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({String sample});
}

/// @nodoc
class __$SearchViewModelStateCopyWithImpl<$Res>
    extends _$SearchViewModelStateCopyWithImpl<$Res>
    implements _$SearchViewModelStateCopyWith<$Res> {
  __$SearchViewModelStateCopyWithImpl(
      _SearchViewModelState _value, $Res Function(_SearchViewModelState) _then)
      : super(_value, (v) => _then(v as _SearchViewModelState));

  @override
  _SearchViewModelState get _value => super._value as _SearchViewModelState;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_SearchViewModelState(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchViewModelState implements _SearchViewModelState {
  _$_SearchViewModelState({this.sample = ''});

  @JsonKey(defaultValue: '')
  @override
  final String sample;

  @override
  String toString() {
    return 'SearchViewModelState(sample: $sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchViewModelState &&
            (identical(other.sample, sample) ||
                const DeepCollectionEquality().equals(other.sample, sample)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sample);

  @JsonKey(ignore: true)
  @override
  _$SearchViewModelStateCopyWith<_SearchViewModelState> get copyWith =>
      __$SearchViewModelStateCopyWithImpl<_SearchViewModelState>(
          this, _$identity);
}

abstract class _SearchViewModelState implements SearchViewModelState {
  factory _SearchViewModelState({String sample}) = _$_SearchViewModelState;

  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchViewModelStateCopyWith<_SearchViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
