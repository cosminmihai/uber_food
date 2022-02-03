// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetUserTearOff {
  const _$GetUserTearOff();

  GetUser$ call(String uid) {
    return GetUser$(
      uid,
    );
  }

  GetUserSuccessful successful(AppUser user) {
    return GetUserSuccessful(
      user,
    );
  }

  GetUserError error(Object error, StackTrace stackTrace) {
    return GetUserError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetUser = _$GetUserTearOff();

/// @nodoc
mixin _$GetUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUser$ value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserCopyWith<$Res> {
  factory $GetUserCopyWith(GetUser value, $Res Function(GetUser) then) =
      _$GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserCopyWithImpl<$Res> implements $GetUserCopyWith<$Res> {
  _$GetUserCopyWithImpl(this._value, this._then);

  final GetUser _value;
  // ignore: unused_field
  final $Res Function(GetUser) _then;
}

/// @nodoc
abstract class $GetUser$CopyWith<$Res> {
  factory $GetUser$CopyWith(GetUser$ value, $Res Function(GetUser$) then) =
      _$GetUser$CopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$GetUser$CopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUser$CopyWith<$Res> {
  _$GetUser$CopyWithImpl(GetUser$ _value, $Res Function(GetUser$) _then)
      : super(_value, (v) => _then(v as GetUser$));

  @override
  GetUser$ get _value => super._value as GetUser$;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(GetUser$(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUser$ implements GetUser$ {
  const _$GetUser$(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'GetUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  $GetUser$CopyWith<GetUser$> get copyWith =>
      _$GetUser$CopyWithImpl<GetUser$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUser$ value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUser$ implements GetUser {
  const factory GetUser$(String uid) = _$GetUser$;

  String get uid;
  @JsonKey(ignore: true)
  $GetUser$CopyWith<GetUser$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserSuccessfulCopyWith<$Res> {
  factory $GetUserSuccessfulCopyWith(
          GetUserSuccessful value, $Res Function(GetUserSuccessful) then) =
      _$GetUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$GetUserSuccessfulCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserSuccessfulCopyWith<$Res> {
  _$GetUserSuccessfulCopyWithImpl(
      GetUserSuccessful _value, $Res Function(GetUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetUserSuccessful));

  @override
  GetUserSuccessful get _value => super._value as GetUserSuccessful;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(GetUserSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$GetUserSuccessful implements GetUserSuccessful {
  const _$GetUserSuccessful(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'GetUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserSuccessful &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith =>
      _$GetUserSuccessfulCopyWithImpl<GetUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUser$ value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserSuccessful implements GetUser {
  const factory GetUserSuccessful(AppUser user) = _$GetUserSuccessful;

  AppUser get user;
  @JsonKey(ignore: true)
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserErrorCopyWith<$Res> {
  factory $GetUserErrorCopyWith(
          GetUserError value, $Res Function(GetUserError) then) =
      _$GetUserErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetUserErrorCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserErrorCopyWith<$Res> {
  _$GetUserErrorCopyWithImpl(
      GetUserError _value, $Res Function(GetUserError) _then)
      : super(_value, (v) => _then(v as GetUserError));

  @override
  GetUserError get _value => super._value as GetUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetUserError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$GetUserError implements GetUserError {
  const _$GetUserError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $GetUserErrorCopyWith<GetUserError> get copyWith =>
      _$GetUserErrorCopyWithImpl<GetUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid)? $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetUser$ value) $default, {
    required TResult Function(GetUserSuccessful value) successful,
    required TResult Function(GetUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetUser$ value)? $default, {
    TResult Function(GetUserSuccessful value)? successful,
    TResult Function(GetUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserError implements GetUser, ErrorAction {
  const factory GetUserError(Object error, StackTrace stackTrace) =
      _$GetUserError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetUserErrorCopyWith<GetUserError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetUserLocationTearOff {
  const _$GetUserLocationTearOff();

  GetUserLocationStart start({String pendingId = _kGetUserLocationPendingId}) {
    return GetUserLocationStart(
      pendingId: pendingId,
    );
  }

  GetUserLocationUpdate update(LatLng location) {
    return GetUserLocationUpdate(
      location,
    );
  }

  GetUserLocationSuccessful successful(LatLng location,
      [String pendingId = _kGetUserLocationPendingId]) {
    return GetUserLocationSuccessful(
      location,
      pendingId,
    );
  }

  GetUserLocationError error(Object error, StackTrace stackTrace,
      [String pendingId = _kGetUserLocationPendingId]) {
    return GetUserLocationError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetUserLocation = _$GetUserLocationTearOff();

/// @nodoc
mixin _$GetUserLocation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(LatLng location) update,
    required TResult Function(LatLng location, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserLocationStart value) start,
    required TResult Function(GetUserLocationUpdate value) update,
    required TResult Function(GetUserLocationSuccessful value) successful,
    required TResult Function(GetUserLocationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserLocationCopyWith<$Res> {
  factory $GetUserLocationCopyWith(
          GetUserLocation value, $Res Function(GetUserLocation) then) =
      _$GetUserLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserLocationCopyWithImpl<$Res>
    implements $GetUserLocationCopyWith<$Res> {
  _$GetUserLocationCopyWithImpl(this._value, this._then);

  final GetUserLocation _value;
  // ignore: unused_field
  final $Res Function(GetUserLocation) _then;
}

/// @nodoc
abstract class $GetUserLocationStartCopyWith<$Res> {
  factory $GetUserLocationStartCopyWith(GetUserLocationStart value,
          $Res Function(GetUserLocationStart) then) =
      _$GetUserLocationStartCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetUserLocationStartCopyWithImpl<$Res>
    extends _$GetUserLocationCopyWithImpl<$Res>
    implements $GetUserLocationStartCopyWith<$Res> {
  _$GetUserLocationStartCopyWithImpl(
      GetUserLocationStart _value, $Res Function(GetUserLocationStart) _then)
      : super(_value, (v) => _then(v as GetUserLocationStart));

  @override
  GetUserLocationStart get _value => super._value as GetUserLocationStart;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(GetUserLocationStart(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$GetUserLocationStart implements GetUserLocationStart {
  const _$GetUserLocationStart({this.pendingId = _kGetUserLocationPendingId});

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetUserLocation.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserLocationStart &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetUserLocationStartCopyWith<GetUserLocationStart> get copyWith =>
      _$GetUserLocationStartCopyWithImpl<GetUserLocationStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(LatLng location) update,
    required TResult Function(LatLng location, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserLocationStart value) start,
    required TResult Function(GetUserLocationUpdate value) update,
    required TResult Function(GetUserLocationSuccessful value) successful,
    required TResult Function(GetUserLocationError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetUserLocationStart implements GetUserLocation, ActionStart {
  const factory GetUserLocationStart({String pendingId}) =
      _$GetUserLocationStart;

  String get pendingId;
  @JsonKey(ignore: true)
  $GetUserLocationStartCopyWith<GetUserLocationStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserLocationUpdateCopyWith<$Res> {
  factory $GetUserLocationUpdateCopyWith(GetUserLocationUpdate value,
          $Res Function(GetUserLocationUpdate) then) =
      _$GetUserLocationUpdateCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class _$GetUserLocationUpdateCopyWithImpl<$Res>
    extends _$GetUserLocationCopyWithImpl<$Res>
    implements $GetUserLocationUpdateCopyWith<$Res> {
  _$GetUserLocationUpdateCopyWithImpl(
      GetUserLocationUpdate _value, $Res Function(GetUserLocationUpdate) _then)
      : super(_value, (v) => _then(v as GetUserLocationUpdate));

  @override
  GetUserLocationUpdate get _value => super._value as GetUserLocationUpdate;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(GetUserLocationUpdate(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$GetUserLocationUpdate implements GetUserLocationUpdate {
  const _$GetUserLocationUpdate(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'GetUserLocation.update(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserLocationUpdate &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $GetUserLocationUpdateCopyWith<GetUserLocationUpdate> get copyWith =>
      _$GetUserLocationUpdateCopyWithImpl<GetUserLocationUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(LatLng location) update,
    required TResult Function(LatLng location, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return update(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return update?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserLocationStart value) start,
    required TResult Function(GetUserLocationUpdate value) update,
    required TResult Function(GetUserLocationSuccessful value) successful,
    required TResult Function(GetUserLocationError value) error,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class GetUserLocationUpdate implements GetUserLocation {
  const factory GetUserLocationUpdate(LatLng location) =
      _$GetUserLocationUpdate;

  LatLng get location;
  @JsonKey(ignore: true)
  $GetUserLocationUpdateCopyWith<GetUserLocationUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserLocationSuccessfulCopyWith<$Res> {
  factory $GetUserLocationSuccessfulCopyWith(GetUserLocationSuccessful value,
          $Res Function(GetUserLocationSuccessful) then) =
      _$GetUserLocationSuccessfulCopyWithImpl<$Res>;
  $Res call({LatLng location, String pendingId});
}

/// @nodoc
class _$GetUserLocationSuccessfulCopyWithImpl<$Res>
    extends _$GetUserLocationCopyWithImpl<$Res>
    implements $GetUserLocationSuccessfulCopyWith<$Res> {
  _$GetUserLocationSuccessfulCopyWithImpl(GetUserLocationSuccessful _value,
      $Res Function(GetUserLocationSuccessful) _then)
      : super(_value, (v) => _then(v as GetUserLocationSuccessful));

  @override
  GetUserLocationSuccessful get _value =>
      super._value as GetUserLocationSuccessful;

  @override
  $Res call({
    Object? location = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetUserLocationSuccessful(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$GetUserLocationSuccessful implements GetUserLocationSuccessful {
  const _$GetUserLocationSuccessful(this.location,
      [this.pendingId = _kGetUserLocationPendingId]);

  @override
  final LatLng location;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetUserLocation.successful(location: $location, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserLocationSuccessful &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetUserLocationSuccessfulCopyWith<GetUserLocationSuccessful> get copyWith =>
      _$GetUserLocationSuccessfulCopyWithImpl<GetUserLocationSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(LatLng location) update,
    required TResult Function(LatLng location, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(location, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return successful?.call(location, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(location, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserLocationStart value) start,
    required TResult Function(GetUserLocationUpdate value) update,
    required TResult Function(GetUserLocationSuccessful value) successful,
    required TResult Function(GetUserLocationError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserLocationSuccessful
    implements GetUserLocation, ActionDone {
  const factory GetUserLocationSuccessful(LatLng location, [String pendingId]) =
      _$GetUserLocationSuccessful;

  LatLng get location;
  String get pendingId;
  @JsonKey(ignore: true)
  $GetUserLocationSuccessfulCopyWith<GetUserLocationSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserLocationErrorCopyWith<$Res> {
  factory $GetUserLocationErrorCopyWith(GetUserLocationError value,
          $Res Function(GetUserLocationError) then) =
      _$GetUserLocationErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetUserLocationErrorCopyWithImpl<$Res>
    extends _$GetUserLocationCopyWithImpl<$Res>
    implements $GetUserLocationErrorCopyWith<$Res> {
  _$GetUserLocationErrorCopyWithImpl(
      GetUserLocationError _value, $Res Function(GetUserLocationError) _then)
      : super(_value, (v) => _then(v as GetUserLocationError));

  @override
  GetUserLocationError get _value => super._value as GetUserLocationError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetUserLocationError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$GetUserLocationError implements GetUserLocationError {
  const _$GetUserLocationError(this.error, this.stackTrace,
      [this.pendingId = _kGetUserLocationPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetUserLocation.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserLocationError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetUserLocationErrorCopyWith<GetUserLocationError> get copyWith =>
      _$GetUserLocationErrorCopyWithImpl<GetUserLocationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(LatLng location) update,
    required TResult Function(LatLng location, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(LatLng location)? update,
    TResult Function(LatLng location, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserLocationStart value) start,
    required TResult Function(GetUserLocationUpdate value) update,
    required TResult Function(GetUserLocationSuccessful value) successful,
    required TResult Function(GetUserLocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserLocationStart value)? start,
    TResult Function(GetUserLocationUpdate value)? update,
    TResult Function(GetUserLocationSuccessful value)? successful,
    TResult Function(GetUserLocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserLocationError
    implements GetUserLocation, ActionDone, ErrorAction {
  const factory GetUserLocationError(Object error, StackTrace stackTrace,
      [String pendingId]) = _$GetUserLocationError;

  Object get error;
  StackTrace get stackTrace;
  String get pendingId;
  @JsonKey(ignore: true)
  $GetUserLocationErrorCopyWith<GetUserLocationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LogoutTearOff {
  const _$LogoutTearOff();

  Logout$ call() {
    return const Logout$();
  }

  LogoutSuccessful successful() {
    return const LogoutSuccessful();
  }

  LogoutError error(Object error, StackTrace stackTrace) {
    return LogoutError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $Logout = _$LogoutTearOff();

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Logout$ value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  final Logout _value;
  // ignore: unused_field
  final $Res Function(Logout) _then;
}

/// @nodoc
abstract class $Logout$CopyWith<$Res> {
  factory $Logout$CopyWith(Logout$ value, $Res Function(Logout$) then) =
      _$Logout$CopyWithImpl<$Res>;
}

/// @nodoc
class _$Logout$CopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $Logout$CopyWith<$Res> {
  _$Logout$CopyWithImpl(Logout$ _value, $Res Function(Logout$) _then)
      : super(_value, (v) => _then(v as Logout$));

  @override
  Logout$ get _value => super._value as Logout$;
}

/// @nodoc

class _$Logout$ implements Logout$ {
  const _$Logout$();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Logout$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Logout$ value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Logout$ implements Logout {
  const factory Logout$() = _$Logout$;
}

/// @nodoc
abstract class $LogoutSuccessfulCopyWith<$Res> {
  factory $LogoutSuccessfulCopyWith(
          LogoutSuccessful value, $Res Function(LogoutSuccessful) then) =
      _$LogoutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutSuccessfulCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutSuccessfulCopyWith<$Res> {
  _$LogoutSuccessfulCopyWithImpl(
      LogoutSuccessful _value, $Res Function(LogoutSuccessful) _then)
      : super(_value, (v) => _then(v as LogoutSuccessful));

  @override
  LogoutSuccessful get _value => super._value as LogoutSuccessful;
}

/// @nodoc

class _$LogoutSuccessful implements LogoutSuccessful {
  const _$LogoutSuccessful();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Logout$ value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessful;
}

/// @nodoc
abstract class $LogoutErrorCopyWith<$Res> {
  factory $LogoutErrorCopyWith(
          LogoutError value, $Res Function(LogoutError) then) =
      _$LogoutErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$LogoutErrorCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res>
    implements $LogoutErrorCopyWith<$Res> {
  _$LogoutErrorCopyWithImpl(
      LogoutError _value, $Res Function(LogoutError) _then)
      : super(_value, (v) => _then(v as LogoutError));

  @override
  LogoutError get _value => super._value as LogoutError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(LogoutError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$LogoutError implements LogoutError {
  const _$LogoutError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Logout.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogoutError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $LogoutErrorCopyWith<LogoutError> get copyWith =>
      _$LogoutErrorCopyWithImpl<LogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Logout$ value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Logout$ value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout, ErrorAction {
  const factory LogoutError(Object error, StackTrace stackTrace) =
      _$LogoutError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $LogoutErrorCopyWith<LogoutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetUserLocationTearOff {
  const _$SetUserLocationTearOff();

  SetUserLocation$ call(LatLng location) {
    return SetUserLocation$(
      location,
    );
  }
}

/// @nodoc
const $SetUserLocation = _$SetUserLocationTearOff();

/// @nodoc
mixin _$SetUserLocation {
  LatLng get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetUserLocationCopyWith<SetUserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetUserLocationCopyWith<$Res> {
  factory $SetUserLocationCopyWith(
          SetUserLocation value, $Res Function(SetUserLocation) then) =
      _$SetUserLocationCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class _$SetUserLocationCopyWithImpl<$Res>
    implements $SetUserLocationCopyWith<$Res> {
  _$SetUserLocationCopyWithImpl(this._value, this._then);

  final SetUserLocation _value;
  // ignore: unused_field
  final $Res Function(SetUserLocation) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
abstract class $SetUserLocation$CopyWith<$Res>
    implements $SetUserLocationCopyWith<$Res> {
  factory $SetUserLocation$CopyWith(
          SetUserLocation$ value, $Res Function(SetUserLocation$) then) =
      _$SetUserLocation$CopyWithImpl<$Res>;
  @override
  $Res call({LatLng location});
}

/// @nodoc
class _$SetUserLocation$CopyWithImpl<$Res>
    extends _$SetUserLocationCopyWithImpl<$Res>
    implements $SetUserLocation$CopyWith<$Res> {
  _$SetUserLocation$CopyWithImpl(
      SetUserLocation$ _value, $Res Function(SetUserLocation$) _then)
      : super(_value, (v) => _then(v as SetUserLocation$));

  @override
  SetUserLocation$ get _value => super._value as SetUserLocation$;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(SetUserLocation$(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$SetUserLocation$ implements SetUserLocation$ {
  const _$SetUserLocation$(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'SetUserLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetUserLocation$ &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  $SetUserLocation$CopyWith<SetUserLocation$> get copyWith =>
      _$SetUserLocation$CopyWithImpl<SetUserLocation$>(this, _$identity);
}

abstract class SetUserLocation$ implements SetUserLocation {
  const factory SetUserLocation$(LatLng location) = _$SetUserLocation$;

  @override
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  $SetUserLocation$CopyWith<SetUserLocation$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInWithGoogleTearOff {
  const _$SignInWithGoogleTearOff();

  SignInWithGoogleStart start(
      {required ActionResult result,
      String pendingId = _kSignInWithGooglePendingId}) {
    return SignInWithGoogleStart(
      result: result,
      pendingId: pendingId,
    );
  }

  SignInWithGoogleSuccessful successful(AppUser user,
      [String pendingId = _kSignInWithGooglePendingId]) {
    return SignInWithGoogleSuccessful(
      user,
      pendingId,
    );
  }

  SignInWithGoogleError error(Object error, StackTrace stackTrace,
      [String pendingId = _kSignInWithGooglePendingId]) {
    return SignInWithGoogleError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $SignInWithGoogle = _$SignInWithGoogleTearOff();

/// @nodoc
mixin _$SignInWithGoogle {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult result, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithGoogleStart value) start,
    required TResult Function(SignInWithGoogleSuccessful value) successful,
    required TResult Function(SignInWithGoogleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInWithGoogleCopyWith<SignInWithGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$SignInWithGoogleCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(this._value, this._then);

  final SignInWithGoogle _value;
  // ignore: unused_field
  final $Res Function(SignInWithGoogle) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SignInWithGoogleStartCopyWith<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleStartCopyWith(SignInWithGoogleStart value,
          $Res Function(SignInWithGoogleStart) then) =
      _$SignInWithGoogleStartCopyWithImpl<$Res>;
  @override
  $Res call({ActionResult result, String pendingId});
}

/// @nodoc
class _$SignInWithGoogleStartCopyWithImpl<$Res>
    extends _$SignInWithGoogleCopyWithImpl<$Res>
    implements $SignInWithGoogleStartCopyWith<$Res> {
  _$SignInWithGoogleStartCopyWithImpl(
      SignInWithGoogleStart _value, $Res Function(SignInWithGoogleStart) _then)
      : super(_value, (v) => _then(v as SignInWithGoogleStart));

  @override
  SignInWithGoogleStart get _value => super._value as SignInWithGoogleStart;

  @override
  $Res call({
    Object? result = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SignInWithGoogleStart(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$SignInWithGoogleStart implements SignInWithGoogleStart {
  const _$SignInWithGoogleStart(
      {required this.result, this.pendingId = _kSignInWithGooglePendingId});

  @override
  final ActionResult result;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SignInWithGoogle.start(result: $result, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithGoogleStart &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SignInWithGoogleStartCopyWith<SignInWithGoogleStart> get copyWith =>
      _$SignInWithGoogleStartCopyWithImpl<SignInWithGoogleStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult result, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return start(result, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return start?.call(result, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(result, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithGoogleStart value) start,
    required TResult Function(SignInWithGoogleSuccessful value) successful,
    required TResult Function(SignInWithGoogleError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogleStart implements SignInWithGoogle, ActionStart {
  const factory SignInWithGoogleStart(
      {required ActionResult result,
      String pendingId}) = _$SignInWithGoogleStart;

  ActionResult get result;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SignInWithGoogleStartCopyWith<SignInWithGoogleStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleSuccessfulCopyWith<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleSuccessfulCopyWith(SignInWithGoogleSuccessful value,
          $Res Function(SignInWithGoogleSuccessful) then) =
      _$SignInWithGoogleSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({AppUser user, String pendingId});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignInWithGoogleSuccessfulCopyWithImpl<$Res>
    extends _$SignInWithGoogleCopyWithImpl<$Res>
    implements $SignInWithGoogleSuccessfulCopyWith<$Res> {
  _$SignInWithGoogleSuccessfulCopyWithImpl(SignInWithGoogleSuccessful _value,
      $Res Function(SignInWithGoogleSuccessful) _then)
      : super(_value, (v) => _then(v as SignInWithGoogleSuccessful));

  @override
  SignInWithGoogleSuccessful get _value =>
      super._value as SignInWithGoogleSuccessful;

  @override
  $Res call({
    Object? user = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SignInWithGoogleSuccessful(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$SignInWithGoogleSuccessful implements SignInWithGoogleSuccessful {
  const _$SignInWithGoogleSuccessful(this.user,
      [this.pendingId = _kSignInWithGooglePendingId]);

  @override
  final AppUser user;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SignInWithGoogle.successful(user: $user, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithGoogleSuccessful &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SignInWithGoogleSuccessfulCopyWith<SignInWithGoogleSuccessful>
      get copyWith =>
          _$SignInWithGoogleSuccessfulCopyWithImpl<SignInWithGoogleSuccessful>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult result, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(user, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return successful?.call(user, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithGoogleStart value) start,
    required TResult Function(SignInWithGoogleSuccessful value) successful,
    required TResult Function(SignInWithGoogleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogleSuccessful
    implements SignInWithGoogle, ActionDone {
  const factory SignInWithGoogleSuccessful(AppUser user, [String pendingId]) =
      _$SignInWithGoogleSuccessful;

  AppUser get user;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SignInWithGoogleSuccessfulCopyWith<SignInWithGoogleSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleErrorCopyWith<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleErrorCopyWith(SignInWithGoogleError value,
          $Res Function(SignInWithGoogleError) then) =
      _$SignInWithGoogleErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$SignInWithGoogleErrorCopyWithImpl<$Res>
    extends _$SignInWithGoogleCopyWithImpl<$Res>
    implements $SignInWithGoogleErrorCopyWith<$Res> {
  _$SignInWithGoogleErrorCopyWithImpl(
      SignInWithGoogleError _value, $Res Function(SignInWithGoogleError) _then)
      : super(_value, (v) => _then(v as SignInWithGoogleError));

  @override
  SignInWithGoogleError get _value => super._value as SignInWithGoogleError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SignInWithGoogleError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$SignInWithGoogleError implements SignInWithGoogleError {
  const _$SignInWithGoogleError(this.error, this.stackTrace,
      [this.pendingId = _kSignInWithGooglePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SignInWithGoogle.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithGoogleError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SignInWithGoogleErrorCopyWith<SignInWithGoogleError> get copyWith =>
      _$SignInWithGoogleErrorCopyWithImpl<SignInWithGoogleError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult result, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult result, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithGoogleStart value) start,
    required TResult Function(SignInWithGoogleSuccessful value) successful,
    required TResult Function(SignInWithGoogleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithGoogleStart value)? start,
    TResult Function(SignInWithGoogleSuccessful value)? successful,
    TResult Function(SignInWithGoogleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogleError
    implements SignInWithGoogle, ActionDone, ErrorAction {
  const factory SignInWithGoogleError(Object error, StackTrace stackTrace,
      [String pendingId]) = _$SignInWithGoogleError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SignInWithGoogleErrorCopyWith<SignInWithGoogleError> get copyWith =>
      throw _privateConstructorUsedError;
}
