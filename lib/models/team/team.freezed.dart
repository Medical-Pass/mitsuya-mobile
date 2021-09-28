// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
class _$TeamTearOff {
  const _$TeamTearOff();

  _Team call(
      {required String id,
      required String name,
      String? serviceShort,
      String? imageId,
      String? genreId,
      String? serviceWorkId,
      List<String>? coWorkGoalIds,
      String? vision,
      String? background,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt}) {
    return _Team(
      id: id,
      name: name,
      serviceShort: serviceShort,
      imageId: imageId,
      genreId: genreId,
      serviceWorkId: serviceWorkId,
      coWorkGoalIds: coWorkGoalIds,
      vision: vision,
      background: background,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Team fromJson(Map<String, Object> json) {
    return Team.fromJson(json);
  }
}

/// @nodoc
const $Team = _$TeamTearOff();

/// @nodoc
mixin _$Team {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get serviceShort => throw _privateConstructorUsedError;
  String? get imageId => throw _privateConstructorUsedError;
  String? get genreId => throw _privateConstructorUsedError;
  String? get serviceWorkId => throw _privateConstructorUsedError;
  List<String>? get coWorkGoalIds => throw _privateConstructorUsedError;
  String? get vision => throw _privateConstructorUsedError;
  String? get background => throw _privateConstructorUsedError;
  @DateTimeStringConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeStringConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String? serviceShort,
      String? imageId,
      String? genreId,
      String? serviceWorkId,
      List<String>? coWorkGoalIds,
      String? vision,
      String? background,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceShort = freezed,
    Object? imageId = freezed,
    Object? genreId = freezed,
    Object? serviceWorkId = freezed,
    Object? coWorkGoalIds = freezed,
    Object? vision = freezed,
    Object? background = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceShort: serviceShort == freezed
          ? _value.serviceShort
          : serviceShort // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      genreId: genreId == freezed
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceWorkId: serviceWorkId == freezed
          ? _value.serviceWorkId
          : serviceWorkId // ignore: cast_nullable_to_non_nullable
              as String?,
      coWorkGoalIds: coWorkGoalIds == freezed
          ? _value.coWorkGoalIds
          : coWorkGoalIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vision: vision == freezed
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) then) =
      __$TeamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String? serviceShort,
      String? imageId,
      String? genreId,
      String? serviceWorkId,
      List<String>? coWorkGoalIds,
      String? vision,
      String? background,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt});
}

/// @nodoc
class __$TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(_Team _value, $Res Function(_Team) _then)
      : super(_value, (v) => _then(v as _Team));

  @override
  _Team get _value => super._value as _Team;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? serviceShort = freezed,
    Object? imageId = freezed,
    Object? genreId = freezed,
    Object? serviceWorkId = freezed,
    Object? coWorkGoalIds = freezed,
    Object? vision = freezed,
    Object? background = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Team(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceShort: serviceShort == freezed
          ? _value.serviceShort
          : serviceShort // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String?,
      genreId: genreId == freezed
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceWorkId: serviceWorkId == freezed
          ? _value.serviceWorkId
          : serviceWorkId // ignore: cast_nullable_to_non_nullable
              as String?,
      coWorkGoalIds: coWorkGoalIds == freezed
          ? _value.coWorkGoalIds
          : coWorkGoalIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      vision: vision == freezed
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String?,
      background: background == freezed
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Team extends _Team {
  _$_Team(
      {required this.id,
      required this.name,
      this.serviceShort,
      this.imageId,
      this.genreId,
      this.serviceWorkId,
      this.coWorkGoalIds,
      this.vision,
      this.background,
      @DateTimeStringConverter() @JsonKey(name: 'created_at') this.createdAt,
      @DateTimeStringConverter() @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$_Team.fromJson(Map<String, dynamic> json) =>
      _$_$_TeamFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? serviceShort;
  @override
  final String? imageId;
  @override
  final String? genreId;
  @override
  final String? serviceWorkId;
  @override
  final List<String>? coWorkGoalIds;
  @override
  final String? vision;
  @override
  final String? background;
  @override
  @DateTimeStringConverter()
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @DateTimeStringConverter()
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, serviceShort: $serviceShort, imageId: $imageId, genreId: $genreId, serviceWorkId: $serviceWorkId, coWorkGoalIds: $coWorkGoalIds, vision: $vision, background: $background, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Team &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.serviceShort, serviceShort) ||
                const DeepCollectionEquality()
                    .equals(other.serviceShort, serviceShort)) &&
            (identical(other.imageId, imageId) ||
                const DeepCollectionEquality()
                    .equals(other.imageId, imageId)) &&
            (identical(other.genreId, genreId) ||
                const DeepCollectionEquality()
                    .equals(other.genreId, genreId)) &&
            (identical(other.serviceWorkId, serviceWorkId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceWorkId, serviceWorkId)) &&
            (identical(other.coWorkGoalIds, coWorkGoalIds) ||
                const DeepCollectionEquality()
                    .equals(other.coWorkGoalIds, coWorkGoalIds)) &&
            (identical(other.vision, vision) ||
                const DeepCollectionEquality().equals(other.vision, vision)) &&
            (identical(other.background, background) ||
                const DeepCollectionEquality()
                    .equals(other.background, background)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(serviceShort) ^
      const DeepCollectionEquality().hash(imageId) ^
      const DeepCollectionEquality().hash(genreId) ^
      const DeepCollectionEquality().hash(serviceWorkId) ^
      const DeepCollectionEquality().hash(coWorkGoalIds) ^
      const DeepCollectionEquality().hash(vision) ^
      const DeepCollectionEquality().hash(background) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$TeamCopyWith<_Team> get copyWith =>
      __$TeamCopyWithImpl<_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TeamToJson(this);
  }
}

abstract class _Team extends Team {
  factory _Team(
      {required String id,
      required String name,
      String? serviceShort,
      String? imageId,
      String? genreId,
      String? serviceWorkId,
      List<String>? coWorkGoalIds,
      String? vision,
      String? background,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt}) = _$_Team;
  _Team._() : super._();

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get serviceShort => throw _privateConstructorUsedError;
  @override
  String? get imageId => throw _privateConstructorUsedError;
  @override
  String? get genreId => throw _privateConstructorUsedError;
  @override
  String? get serviceWorkId => throw _privateConstructorUsedError;
  @override
  List<String>? get coWorkGoalIds => throw _privateConstructorUsedError;
  @override
  String? get vision => throw _privateConstructorUsedError;
  @override
  String? get background => throw _privateConstructorUsedError;
  @override
  @DateTimeStringConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @DateTimeStringConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamCopyWith<_Team> get copyWith => throw _privateConstructorUsedError;
}
