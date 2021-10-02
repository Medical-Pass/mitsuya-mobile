// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_detail_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchDetailViewModelStateTearOff {
  const _$SearchDetailViewModelStateTearOff();

  _SearchDetailViewModelState call({String sample = ''}) {
    return _SearchDetailViewModelState(
      sample: sample,
    );
  }
}

/// @nodoc
const $SearchDetailViewModelState = _$SearchDetailViewModelStateTearOff();

/// @nodoc
mixin _$SearchDetailViewModelState {
  String get sample => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchDetailViewModelStateCopyWith<SearchDetailViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDetailViewModelStateCopyWith<$Res> {
  factory $SearchDetailViewModelStateCopyWith(SearchDetailViewModelState value,
          $Res Function(SearchDetailViewModelState) then) =
      _$SearchDetailViewModelStateCopyWithImpl<$Res>;
  $Res call({String sample});
}

/// @nodoc
class _$SearchDetailViewModelStateCopyWithImpl<$Res>
    implements $SearchDetailViewModelStateCopyWith<$Res> {
  _$SearchDetailViewModelStateCopyWithImpl(this._value, this._then);

  final SearchDetailViewModelState _value;
  // ignore: unused_field
  final $Res Function(SearchDetailViewModelState) _then;

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
abstract class _$SearchDetailViewModelStateCopyWith<$Res>
    implements $SearchDetailViewModelStateCopyWith<$Res> {
  factory _$SearchDetailViewModelStateCopyWith(
          _SearchDetailViewModelState value,
          $Res Function(_SearchDetailViewModelState) then) =
      __$SearchDetailViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({String sample});
}

/// @nodoc
class __$SearchDetailViewModelStateCopyWithImpl<$Res>
    extends _$SearchDetailViewModelStateCopyWithImpl<$Res>
    implements _$SearchDetailViewModelStateCopyWith<$Res> {
  __$SearchDetailViewModelStateCopyWithImpl(_SearchDetailViewModelState _value,
      $Res Function(_SearchDetailViewModelState) _then)
      : super(_value, (v) => _then(v as _SearchDetailViewModelState));

  @override
  _SearchDetailViewModelState get _value =>
      super._value as _SearchDetailViewModelState;

  @override
  $Res call({
    Object? sample = freezed,
  }) {
    return _then(_SearchDetailViewModelState(
      sample: sample == freezed
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_SearchDetailViewModelState implements _SearchDetailViewModelState {
  _$_SearchDetailViewModelState({this.sample = ''});

  @JsonKey(defaultValue: '')
  @override
  final String sample;

  @override
  String toString() {
    return 'SearchDetailViewModelState(sample: $sample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchDetailViewModelState &&
            (identical(other.sample, sample) ||
                const DeepCollectionEquality().equals(other.sample, sample)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sample);

  @JsonKey(ignore: true)
  @override
  _$SearchDetailViewModelStateCopyWith<_SearchDetailViewModelState>
      get copyWith => __$SearchDetailViewModelStateCopyWithImpl<
          _SearchDetailViewModelState>(this, _$identity);
}

abstract class _SearchDetailViewModelState
    implements SearchDetailViewModelState {
  factory _SearchDetailViewModelState({String sample}) =
      _$_SearchDetailViewModelState;

  @override
  String get sample => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchDetailViewModelStateCopyWith<_SearchDetailViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}
