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

  _TeamRegistViewModelState call(
      {String imagePath = '',
      List<String> coWorkList = const <String>[],
      String selectedGenreId = '',
      String selectedServiceId = ''}) {
    return _TeamRegistViewModelState(
      imagePath: imagePath,
      coWorkList: coWorkList,
      selectedGenreId: selectedGenreId,
      selectedServiceId: selectedServiceId,
    );
  }
}

/// @nodoc
const $TeamRegistViewModelState = _$TeamRegistViewModelStateTearOff();

/// @nodoc
mixin _$TeamRegistViewModelState {
  String get imagePath => throw _privateConstructorUsedError;
  List<String> get coWorkList => throw _privateConstructorUsedError;
  String get selectedGenreId => throw _privateConstructorUsedError;
  String get selectedServiceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamRegistViewModelStateCopyWith<TeamRegistViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamRegistViewModelStateCopyWith<$Res> {
  factory $TeamRegistViewModelStateCopyWith(TeamRegistViewModelState value,
          $Res Function(TeamRegistViewModelState) then) =
      _$TeamRegistViewModelStateCopyWithImpl<$Res>;
  $Res call(
      {String imagePath,
      List<String> coWorkList,
      String selectedGenreId,
      String selectedServiceId});
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
    Object? imagePath = freezed,
    Object? coWorkList = freezed,
    Object? selectedGenreId = freezed,
    Object? selectedServiceId = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      coWorkList: coWorkList == freezed
          ? _value.coWorkList
          : coWorkList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedGenreId: selectedGenreId == freezed
          ? _value.selectedGenreId
          : selectedGenreId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedServiceId: selectedServiceId == freezed
          ? _value.selectedServiceId
          : selectedServiceId // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {String imagePath,
      List<String> coWorkList,
      String selectedGenreId,
      String selectedServiceId});
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
    Object? imagePath = freezed,
    Object? coWorkList = freezed,
    Object? selectedGenreId = freezed,
    Object? selectedServiceId = freezed,
  }) {
    return _then(_TeamRegistViewModelState(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      coWorkList: coWorkList == freezed
          ? _value.coWorkList
          : coWorkList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedGenreId: selectedGenreId == freezed
          ? _value.selectedGenreId
          : selectedGenreId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedServiceId: selectedServiceId == freezed
          ? _value.selectedServiceId
          : selectedServiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_TeamRegistViewModelState implements _TeamRegistViewModelState {
  _$_TeamRegistViewModelState(
      {this.imagePath = '',
      this.coWorkList = const <String>[],
      this.selectedGenreId = '',
      this.selectedServiceId = ''});

  @JsonKey(defaultValue: '')
  @override
  final String imagePath;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> coWorkList;
  @JsonKey(defaultValue: '')
  @override
  final String selectedGenreId;
  @JsonKey(defaultValue: '')
  @override
  final String selectedServiceId;

  @override
  String toString() {
    return 'TeamRegistViewModelState(imagePath: $imagePath, coWorkList: $coWorkList, selectedGenreId: $selectedGenreId, selectedServiceId: $selectedServiceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeamRegistViewModelState &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.coWorkList, coWorkList) ||
                const DeepCollectionEquality()
                    .equals(other.coWorkList, coWorkList)) &&
            (identical(other.selectedGenreId, selectedGenreId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedGenreId, selectedGenreId)) &&
            (identical(other.selectedServiceId, selectedServiceId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedServiceId, selectedServiceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(coWorkList) ^
      const DeepCollectionEquality().hash(selectedGenreId) ^
      const DeepCollectionEquality().hash(selectedServiceId);

  @JsonKey(ignore: true)
  @override
  _$TeamRegistViewModelStateCopyWith<_TeamRegistViewModelState> get copyWith =>
      __$TeamRegistViewModelStateCopyWithImpl<_TeamRegistViewModelState>(
          this, _$identity);
}

abstract class _TeamRegistViewModelState implements TeamRegistViewModelState {
  factory _TeamRegistViewModelState(
      {String imagePath,
      List<String> coWorkList,
      String selectedGenreId,
      String selectedServiceId}) = _$_TeamRegistViewModelState;

  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  List<String> get coWorkList => throw _privateConstructorUsedError;
  @override
  String get selectedGenreId => throw _privateConstructorUsedError;
  @override
  String get selectedServiceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamRegistViewModelStateCopyWith<_TeamRegistViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
