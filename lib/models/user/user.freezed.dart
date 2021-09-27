// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String name,
      DateTime? birthday,
      String? gender,
      String? role,
      String? job,
      String? passionForService,
      String? comment,
      String? teamId,
      String? executiveId,
      bool? inviteMember,
      bool? checkNotification,
      bool? transparency,
      @BoolIntConverter()
      @JsonKey(name: 'is_checked')
          bool isChecked = false,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt}) {
    return _User(
      id: id,
      name: name,
      birthday: birthday,
      gender: gender,
      role: role,
      job: job,
      passionForService: passionForService,
      comment: comment,
      teamId: teamId,
      executiveId: executiveId,
      inviteMember: inviteMember,
      checkNotification: checkNotification,
      transparency: transparency,
      isChecked: isChecked,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  String? get passionForService => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get teamId => throw _privateConstructorUsedError;
  String? get executiveId => throw _privateConstructorUsedError;
  bool? get inviteMember => throw _privateConstructorUsedError;
  bool? get checkNotification => throw _privateConstructorUsedError;
  bool? get transparency => throw _privateConstructorUsedError;
  @BoolIntConverter()
  @JsonKey(name: 'is_checked')
  bool get isChecked => throw _privateConstructorUsedError;
  @DateTimeStringConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @DateTimeStringConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      DateTime? birthday,
      String? gender,
      String? role,
      String? job,
      String? passionForService,
      String? comment,
      String? teamId,
      String? executiveId,
      bool? inviteMember,
      bool? checkNotification,
      bool? transparency,
      @BoolIntConverter()
      @JsonKey(name: 'is_checked')
          bool isChecked,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? role = freezed,
    Object? job = freezed,
    Object? passionForService = freezed,
    Object? comment = freezed,
    Object? teamId = freezed,
    Object? executiveId = freezed,
    Object? inviteMember = freezed,
    Object? checkNotification = freezed,
    Object? transparency = freezed,
    Object? isChecked = freezed,
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
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      passionForService: passionForService == freezed
          ? _value.passionForService
          : passionForService // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String?,
      executiveId: executiveId == freezed
          ? _value.executiveId
          : executiveId // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteMember: inviteMember == freezed
          ? _value.inviteMember
          : inviteMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkNotification: checkNotification == freezed
          ? _value.checkNotification
          : checkNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      transparency: transparency == freezed
          ? _value.transparency
          : transparency // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      DateTime? birthday,
      String? gender,
      String? role,
      String? job,
      String? passionForService,
      String? comment,
      String? teamId,
      String? executiveId,
      bool? inviteMember,
      bool? checkNotification,
      bool? transparency,
      @BoolIntConverter()
      @JsonKey(name: 'is_checked')
          bool isChecked,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? role = freezed,
    Object? job = freezed,
    Object? passionForService = freezed,
    Object? comment = freezed,
    Object? teamId = freezed,
    Object? executiveId = freezed,
    Object? inviteMember = freezed,
    Object? checkNotification = freezed,
    Object? transparency = freezed,
    Object? isChecked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      passionForService: passionForService == freezed
          ? _value.passionForService
          : passionForService // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String?,
      executiveId: executiveId == freezed
          ? _value.executiveId
          : executiveId // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteMember: inviteMember == freezed
          ? _value.inviteMember
          : inviteMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkNotification: checkNotification == freezed
          ? _value.checkNotification
          : checkNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      transparency: transparency == freezed
          ? _value.transparency
          : transparency // ignore: cast_nullable_to_non_nullable
              as bool?,
      isChecked: isChecked == freezed
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_User extends _User {
  _$_User(
      {required this.id,
      required this.name,
      this.birthday,
      this.gender,
      this.role,
      this.job,
      this.passionForService,
      this.comment,
      this.teamId,
      this.executiveId,
      this.inviteMember,
      this.checkNotification,
      this.transparency,
      @BoolIntConverter() @JsonKey(name: 'is_checked') this.isChecked = false,
      @DateTimeStringConverter() @JsonKey(name: 'created_at') this.createdAt,
      @DateTimeStringConverter() @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime? birthday;
  @override
  final String? gender;
  @override
  final String? role;
  @override
  final String? job;
  @override
  final String? passionForService;
  @override
  final String? comment;
  @override
  final String? teamId;
  @override
  final String? executiveId;
  @override
  final bool? inviteMember;
  @override
  final bool? checkNotification;
  @override
  final bool? transparency;
  @override
  @BoolIntConverter()
  @JsonKey(name: 'is_checked')
  final bool isChecked;
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
    return 'User(id: $id, name: $name, birthday: $birthday, gender: $gender, role: $role, job: $job, passionForService: $passionForService, comment: $comment, teamId: $teamId, executiveId: $executiveId, inviteMember: $inviteMember, checkNotification: $checkNotification, transparency: $transparency, isChecked: $isChecked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)) &&
            (identical(other.passionForService, passionForService) ||
                const DeepCollectionEquality()
                    .equals(other.passionForService, passionForService)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.teamId, teamId) ||
                const DeepCollectionEquality().equals(other.teamId, teamId)) &&
            (identical(other.executiveId, executiveId) ||
                const DeepCollectionEquality()
                    .equals(other.executiveId, executiveId)) &&
            (identical(other.inviteMember, inviteMember) ||
                const DeepCollectionEquality()
                    .equals(other.inviteMember, inviteMember)) &&
            (identical(other.checkNotification, checkNotification) ||
                const DeepCollectionEquality()
                    .equals(other.checkNotification, checkNotification)) &&
            (identical(other.transparency, transparency) ||
                const DeepCollectionEquality()
                    .equals(other.transparency, transparency)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)) &&
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
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(job) ^
      const DeepCollectionEquality().hash(passionForService) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(teamId) ^
      const DeepCollectionEquality().hash(executiveId) ^
      const DeepCollectionEquality().hash(inviteMember) ^
      const DeepCollectionEquality().hash(checkNotification) ^
      const DeepCollectionEquality().hash(transparency) ^
      const DeepCollectionEquality().hash(isChecked) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User extends User {
  factory _User(
      {required String id,
      required String name,
      DateTime? birthday,
      String? gender,
      String? role,
      String? job,
      String? passionForService,
      String? comment,
      String? teamId,
      String? executiveId,
      bool? inviteMember,
      bool? checkNotification,
      bool? transparency,
      @BoolIntConverter()
      @JsonKey(name: 'is_checked')
          bool isChecked,
      @DateTimeStringConverter()
      @JsonKey(name: 'created_at')
          DateTime? createdAt,
      @DateTimeStringConverter()
      @JsonKey(name: 'updated_at')
          DateTime? updatedAt}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  DateTime? get birthday => throw _privateConstructorUsedError;
  @override
  String? get gender => throw _privateConstructorUsedError;
  @override
  String? get role => throw _privateConstructorUsedError;
  @override
  String? get job => throw _privateConstructorUsedError;
  @override
  String? get passionForService => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  String? get teamId => throw _privateConstructorUsedError;
  @override
  String? get executiveId => throw _privateConstructorUsedError;
  @override
  bool? get inviteMember => throw _privateConstructorUsedError;
  @override
  bool? get checkNotification => throw _privateConstructorUsedError;
  @override
  bool? get transparency => throw _privateConstructorUsedError;
  @override
  @BoolIntConverter()
  @JsonKey(name: 'is_checked')
  bool get isChecked => throw _privateConstructorUsedError;
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
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
