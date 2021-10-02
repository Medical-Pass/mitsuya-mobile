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

  _SearchViewModelState call({int reloadCount = 0}) {
    return _SearchViewModelState(
      reloadCount: reloadCount,
    );
  }
}

/// @nodoc
const $SearchViewModelState = _$SearchViewModelStateTearOff();

/// @nodoc
mixin _$SearchViewModelState {
  int get reloadCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchViewModelStateCopyWith<SearchViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchViewModelStateCopyWith<$Res> {
  factory $SearchViewModelStateCopyWith(SearchViewModelState value,
          $Res Function(SearchViewModelState) then) =
      _$SearchViewModelStateCopyWithImpl<$Res>;
  $Res call({int reloadCount});
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
    Object? reloadCount = freezed,
  }) {
    return _then(_value.copyWith(
      reloadCount: reloadCount == freezed
          ? _value.reloadCount
          : reloadCount // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int reloadCount});
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
    Object? reloadCount = freezed,
  }) {
    return _then(_SearchViewModelState(
      reloadCount: reloadCount == freezed
          ? _value.reloadCount
          : reloadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_SearchViewModelState implements _SearchViewModelState {
  _$_SearchViewModelState({this.reloadCount = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int reloadCount;

  @override
  String toString() {
    return 'SearchViewModelState(reloadCount: $reloadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchViewModelState &&
            (identical(other.reloadCount, reloadCount) ||
                const DeepCollectionEquality()
                    .equals(other.reloadCount, reloadCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reloadCount);

  @JsonKey(ignore: true)
  @override
  _$SearchViewModelStateCopyWith<_SearchViewModelState> get copyWith =>
      __$SearchViewModelStateCopyWithImpl<_SearchViewModelState>(
          this, _$identity);
}

abstract class _SearchViewModelState implements SearchViewModelState {
  factory _SearchViewModelState({int reloadCount}) = _$_SearchViewModelState;

  @override
  int get reloadCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchViewModelStateCopyWith<_SearchViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
