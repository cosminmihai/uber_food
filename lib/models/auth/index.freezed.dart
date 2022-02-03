// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of auth_models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser$.fromJson(json);
}

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  _AppUser$ call(
      {required String uid,
      required String email,
      required String username,
      String? photoUrl,
      @JsonKey(ignore: true) LatLng? currentLocation}) {
    return _AppUser$(
      uid: uid,
      email: email,
      username: username,
      photoUrl: photoUrl,
      currentLocation: currentLocation,
    );
  }

  AppUser fromJson(Map<String, Object?> json) {
    return AppUser.fromJson(json);
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  LatLng? get currentLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String email,
      String username,
      String? photoUrl,
      @JsonKey(ignore: true) LatLng? currentLocation});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? currentLocation = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc
abstract class _$AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUser$CopyWith(_AppUser$ value, $Res Function(_AppUser$) then) =
      __$AppUser$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String username,
      String? photoUrl,
      @JsonKey(ignore: true) LatLng? currentLocation});
}

/// @nodoc
class __$AppUser$CopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUser$CopyWith<$Res> {
  __$AppUser$CopyWithImpl(_AppUser$ _value, $Res Function(_AppUser$) _then)
      : super(_value, (v) => _then(v as _AppUser$));

  @override
  _AppUser$ get _value => super._value as _AppUser$;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? photoUrl = freezed,
    Object? currentLocation = freezed,
  }) {
    return _then(_AppUser$(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser$ implements _AppUser$ {
  const _$_AppUser$(
      {required this.uid,
      required this.email,
      required this.username,
      this.photoUrl,
      @JsonKey(ignore: true) this.currentLocation});

  factory _$_AppUser$.fromJson(Map<String, dynamic> json) =>
      _$$_AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  @override
  final String? photoUrl;
  @override
  @JsonKey(ignore: true)
  final LatLng? currentLocation;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username, photoUrl: $photoUrl, currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            const DeepCollectionEquality()
                .equals(other.currentLocation, currentLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(currentLocation));

  @JsonKey(ignore: true)
  @override
  _$AppUser$CopyWith<_AppUser$> get copyWith =>
      __$AppUser$CopyWithImpl<_AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUser$ToJson(this);
  }
}

abstract class _AppUser$ implements AppUser {
  const factory _AppUser$(
      {required String uid,
      required String email,
      required String username,
      String? photoUrl,
      @JsonKey(ignore: true) LatLng? currentLocation}) = _$_AppUser$;

  factory _AppUser$.fromJson(Map<String, dynamic> json) = _$_AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get username;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  LatLng? get currentLocation;
  @override
  @JsonKey(ignore: true)
  _$AppUser$CopyWith<_AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState$ call(
      {Map<String, AppUser> users = const <String, AppUser>{},
      AppUser? user,
      LatLng? userLocation}) {
    return _AuthState$(
      users: users,
      user: user,
      userLocation: userLocation,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  Map<String, AppUser> get users => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;
  LatLng? get userLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({Map<String, AppUser> users, AppUser? user, LatLng? userLocation});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? user = freezed,
    Object? userLocation = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthState$CopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthState$CopyWith(
          _AuthState$ value, $Res Function(_AuthState$) then) =
      __$AuthState$CopyWithImpl<$Res>;
  @override
  $Res call({Map<String, AppUser> users, AppUser? user, LatLng? userLocation});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$AuthState$CopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthState$CopyWith<$Res> {
  __$AuthState$CopyWithImpl(
      _AuthState$ _value, $Res Function(_AuthState$) _then)
      : super(_value, (v) => _then(v as _AuthState$));

  @override
  _AuthState$ get _value => super._value as _AuthState$;

  @override
  $Res call({
    Object? users = freezed,
    Object? user = freezed,
    Object? userLocation = freezed,
  }) {
    return _then(_AuthState$(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, AppUser>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$_AuthState$ implements _AuthState$ {
  const _$_AuthState$(
      {this.users = const <String, AppUser>{}, this.user, this.userLocation});

  @JsonKey()
  @override
  final Map<String, AppUser> users;
  @override
  final AppUser? user;
  @override
  final LatLng? userLocation;

  @override
  String toString() {
    return 'AuthState(users: $users, user: $user, userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState$ &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(userLocation));

  @JsonKey(ignore: true)
  @override
  _$AuthState$CopyWith<_AuthState$> get copyWith =>
      __$AuthState$CopyWithImpl<_AuthState$>(this, _$identity);
}

abstract class _AuthState$ implements AuthState {
  const factory _AuthState$(
      {Map<String, AppUser> users,
      AppUser? user,
      LatLng? userLocation}) = _$_AuthState$;

  @override
  Map<String, AppUser> get users;
  @override
  AppUser? get user;
  @override
  LatLng? get userLocation;
  @override
  @JsonKey(ignore: true)
  _$AuthState$CopyWith<_AuthState$> get copyWith =>
      throw _privateConstructorUsedError;
}
