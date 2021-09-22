// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainViewModelStateTearOff {
  const _$MainViewModelStateTearOff();

  _MainViewModelState call(
      {int selectedIndex = 0,
      int? jobNum = null,
      bool finishQuestionsFlag = false}) {
    return _MainViewModelState(
      selectedIndex: selectedIndex,
      jobNum: jobNum,
      finishQuestionsFlag: finishQuestionsFlag,
    );
  }
}

/// @nodoc
const $MainViewModelState = _$MainViewModelStateTearOff();

/// @nodoc
mixin _$MainViewModelState {
  int get selectedIndex => throw _privateConstructorUsedError;
  int? get jobNum => throw _privateConstructorUsedError;
  bool get finishQuestionsFlag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainViewModelStateCopyWith<MainViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainViewModelStateCopyWith<$Res> {
  factory $MainViewModelStateCopyWith(
          MainViewModelState value, $Res Function(MainViewModelState) then) =
      _$MainViewModelStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex, int? jobNum, bool finishQuestionsFlag});
}

/// @nodoc
class _$MainViewModelStateCopyWithImpl<$Res>
    implements $MainViewModelStateCopyWith<$Res> {
  _$MainViewModelStateCopyWithImpl(this._value, this._then);

  final MainViewModelState _value;
  // ignore: unused_field
  final $Res Function(MainViewModelState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? jobNum = freezed,
    Object? finishQuestionsFlag = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      jobNum: jobNum == freezed
          ? _value.jobNum
          : jobNum // ignore: cast_nullable_to_non_nullable
              as int?,
      finishQuestionsFlag: finishQuestionsFlag == freezed
          ? _value.finishQuestionsFlag
          : finishQuestionsFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MainViewModelStateCopyWith<$Res>
    implements $MainViewModelStateCopyWith<$Res> {
  factory _$MainViewModelStateCopyWith(
          _MainViewModelState value, $Res Function(_MainViewModelState) then) =
      __$MainViewModelStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex, int? jobNum, bool finishQuestionsFlag});
}

/// @nodoc
class __$MainViewModelStateCopyWithImpl<$Res>
    extends _$MainViewModelStateCopyWithImpl<$Res>
    implements _$MainViewModelStateCopyWith<$Res> {
  __$MainViewModelStateCopyWithImpl(
      _MainViewModelState _value, $Res Function(_MainViewModelState) _then)
      : super(_value, (v) => _then(v as _MainViewModelState));

  @override
  _MainViewModelState get _value => super._value as _MainViewModelState;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? jobNum = freezed,
    Object? finishQuestionsFlag = freezed,
  }) {
    return _then(_MainViewModelState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      jobNum: jobNum == freezed
          ? _value.jobNum
          : jobNum // ignore: cast_nullable_to_non_nullable
              as int?,
      finishQuestionsFlag: finishQuestionsFlag == freezed
          ? _value.finishQuestionsFlag
          : finishQuestionsFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_MainViewModelState implements _MainViewModelState {
  const _$_MainViewModelState(
      {this.selectedIndex = 0,
      this.jobNum = null,
      this.finishQuestionsFlag = false});

  @JsonKey(defaultValue: 0)
  @override
  final int selectedIndex;
  @JsonKey(defaultValue: null)
  @override
  final int? jobNum;
  @JsonKey(defaultValue: false)
  @override
  final bool finishQuestionsFlag;

  @override
  String toString() {
    return 'MainViewModelState(selectedIndex: $selectedIndex, jobNum: $jobNum, finishQuestionsFlag: $finishQuestionsFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainViewModelState &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)) &&
            (identical(other.jobNum, jobNum) ||
                const DeepCollectionEquality().equals(other.jobNum, jobNum)) &&
            (identical(other.finishQuestionsFlag, finishQuestionsFlag) ||
                const DeepCollectionEquality()
                    .equals(other.finishQuestionsFlag, finishQuestionsFlag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedIndex) ^
      const DeepCollectionEquality().hash(jobNum) ^
      const DeepCollectionEquality().hash(finishQuestionsFlag);

  @JsonKey(ignore: true)
  @override
  _$MainViewModelStateCopyWith<_MainViewModelState> get copyWith =>
      __$MainViewModelStateCopyWithImpl<_MainViewModelState>(this, _$identity);
}

abstract class _MainViewModelState implements MainViewModelState {
  const factory _MainViewModelState(
      {int selectedIndex,
      int? jobNum,
      bool finishQuestionsFlag}) = _$_MainViewModelState;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  int? get jobNum => throw _privateConstructorUsedError;
  @override
  bool get finishQuestionsFlag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainViewModelStateCopyWith<_MainViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
