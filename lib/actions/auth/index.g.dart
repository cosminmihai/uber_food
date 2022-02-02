// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_actions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCurrentUserLocation extends GetCurrentUserLocation {
  @override
  final LatLng location;

  factory _$GetCurrentUserLocation(
          [void Function(GetCurrentUserLocationBuilder)? updates]) =>
      (new GetCurrentUserLocationBuilder()..update(updates)).build();

  _$GetCurrentUserLocation._({required this.location}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, 'GetCurrentUserLocation', 'location');
  }

  @override
  GetCurrentUserLocation rebuild(
          void Function(GetCurrentUserLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCurrentUserLocationBuilder toBuilder() =>
      new GetCurrentUserLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCurrentUserLocation && location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(0, location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCurrentUserLocation')
          ..add('location', location))
        .toString();
  }
}

class GetCurrentUserLocationBuilder
    implements Builder<GetCurrentUserLocation, GetCurrentUserLocationBuilder> {
  _$GetCurrentUserLocation? _$v;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  GetCurrentUserLocationBuilder();

  GetCurrentUserLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCurrentUserLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCurrentUserLocation;
  }

  @override
  void update(void Function(GetCurrentUserLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCurrentUserLocation build() {
    final _$result = _$v ??
        new _$GetCurrentUserLocation._(
            location: BuiltValueNullFieldError.checkNotNull(
                location, 'GetCurrentUserLocation', 'location'));
    replace(_$result);
    return _$result;
  }
}

class _$GetFirstUserLocation extends GetFirstUserLocation {
  factory _$GetFirstUserLocation(
          [void Function(GetFirstUserLocationBuilder)? updates]) =>
      (new GetFirstUserLocationBuilder()..update(updates)).build();

  _$GetFirstUserLocation._() : super._();

  @override
  GetFirstUserLocation rebuild(
          void Function(GetFirstUserLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFirstUserLocationBuilder toBuilder() =>
      new GetFirstUserLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFirstUserLocation;
  }

  @override
  int get hashCode {
    return 494714846;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetFirstUserLocation').toString();
  }
}

class GetFirstUserLocationBuilder
    implements Builder<GetFirstUserLocation, GetFirstUserLocationBuilder> {
  _$GetFirstUserLocation? _$v;

  GetFirstUserLocationBuilder();

  @override
  void replace(GetFirstUserLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFirstUserLocation;
  }

  @override
  void update(void Function(GetFirstUserLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFirstUserLocation build() {
    final _$result = _$v ?? new _$GetFirstUserLocation._();
    replace(_$result);
    return _$result;
  }
}

class _$GetFirstUserLocationSuccessful extends GetFirstUserLocationSuccessful {
  @override
  final LatLng location;

  factory _$GetFirstUserLocationSuccessful(
          [void Function(GetFirstUserLocationSuccessfulBuilder)? updates]) =>
      (new GetFirstUserLocationSuccessfulBuilder()..update(updates)).build();

  _$GetFirstUserLocationSuccessful._({required this.location}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, 'GetFirstUserLocationSuccessful', 'location');
  }

  @override
  GetFirstUserLocationSuccessful rebuild(
          void Function(GetFirstUserLocationSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFirstUserLocationSuccessfulBuilder toBuilder() =>
      new GetFirstUserLocationSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFirstUserLocationSuccessful &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(0, location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFirstUserLocationSuccessful')
          ..add('location', location))
        .toString();
  }
}

class GetFirstUserLocationSuccessfulBuilder
    implements
        Builder<GetFirstUserLocationSuccessful,
            GetFirstUserLocationSuccessfulBuilder> {
  _$GetFirstUserLocationSuccessful? _$v;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  GetFirstUserLocationSuccessfulBuilder();

  GetFirstUserLocationSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFirstUserLocationSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFirstUserLocationSuccessful;
  }

  @override
  void update(void Function(GetFirstUserLocationSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFirstUserLocationSuccessful build() {
    final _$result = _$v ??
        new _$GetFirstUserLocationSuccessful._(
            location: BuiltValueNullFieldError.checkNotNull(
                location, 'GetFirstUserLocationSuccessful', 'location'));
    replace(_$result);
    return _$result;
  }
}

class _$GetFirstUserLocationError extends GetFirstUserLocationError {
  @override
  final Object error;

  factory _$GetFirstUserLocationError(
          [void Function(GetFirstUserLocationErrorBuilder)? updates]) =>
      (new GetFirstUserLocationErrorBuilder()..update(updates)).build();

  _$GetFirstUserLocationError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'GetFirstUserLocationError', 'error');
  }

  @override
  GetFirstUserLocationError rebuild(
          void Function(GetFirstUserLocationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFirstUserLocationErrorBuilder toBuilder() =>
      new GetFirstUserLocationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFirstUserLocationError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFirstUserLocationError')
          ..add('error', error))
        .toString();
  }
}

class GetFirstUserLocationErrorBuilder
    implements
        Builder<GetFirstUserLocationError, GetFirstUserLocationErrorBuilder> {
  _$GetFirstUserLocationError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  GetFirstUserLocationErrorBuilder();

  GetFirstUserLocationErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFirstUserLocationError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFirstUserLocationError;
  }

  @override
  void update(void Function(GetFirstUserLocationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFirstUserLocationError build() {
    final _$result = _$v ??
        new _$GetFirstUserLocationError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'GetFirstUserLocationError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUsers extends GetUsers {
  factory _$GetUsers([void Function(GetUsersBuilder)? updates]) =>
      (new GetUsersBuilder()..update(updates)).build();

  _$GetUsers._() : super._();

  @override
  GetUsers rebuild(void Function(GetUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsersBuilder toBuilder() => new GetUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsers;
  }

  @override
  int get hashCode {
    return 699968448;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetUsers').toString();
  }
}

class GetUsersBuilder implements Builder<GetUsers, GetUsersBuilder> {
  _$GetUsers? _$v;

  GetUsersBuilder();

  @override
  void replace(GetUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsers;
  }

  @override
  void update(void Function(GetUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsers build() {
    final _$result = _$v ?? new _$GetUsers._();
    replace(_$result);
    return _$result;
  }
}

class _$GetUsersSuccessful extends GetUsersSuccessful {
  @override
  final BuiltList<AppUser> users;

  factory _$GetUsersSuccessful(
          [void Function(GetUsersSuccessfulBuilder)? updates]) =>
      (new GetUsersSuccessfulBuilder()..update(updates)).build();

  _$GetUsersSuccessful._({required this.users}) : super._() {
    BuiltValueNullFieldError.checkNotNull(users, 'GetUsersSuccessful', 'users');
  }

  @override
  GetUsersSuccessful rebuild(
          void Function(GetUsersSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsersSuccessfulBuilder toBuilder() =>
      new GetUsersSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsersSuccessful && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUsersSuccessful')
          ..add('users', users))
        .toString();
  }
}

class GetUsersSuccessfulBuilder
    implements Builder<GetUsersSuccessful, GetUsersSuccessfulBuilder> {
  _$GetUsersSuccessful? _$v;

  ListBuilder<AppUser>? _users;
  ListBuilder<AppUser> get users =>
      _$this._users ??= new ListBuilder<AppUser>();
  set users(ListBuilder<AppUser>? users) => _$this._users = users;

  GetUsersSuccessfulBuilder();

  GetUsersSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsersSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsersSuccessful;
  }

  @override
  void update(void Function(GetUsersSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsersSuccessful build() {
    _$GetUsersSuccessful _$result;
    try {
      _$result = _$v ?? new _$GetUsersSuccessful._(users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUsersSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetUsersError extends GetUsersError {
  @override
  final Object error;

  factory _$GetUsersError([void Function(GetUsersErrorBuilder)? updates]) =>
      (new GetUsersErrorBuilder()..update(updates)).build();

  _$GetUsersError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'GetUsersError', 'error');
  }

  @override
  GetUsersError rebuild(void Function(GetUsersErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsersErrorBuilder toBuilder() => new GetUsersErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsersError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUsersError')..add('error', error))
        .toString();
  }
}

class GetUsersErrorBuilder
    implements Builder<GetUsersError, GetUsersErrorBuilder> {
  _$GetUsersError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  GetUsersErrorBuilder();

  GetUsersErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsersError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsersError;
  }

  @override
  void update(void Function(GetUsersErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsersError build() {
    final _$result = _$v ??
        new _$GetUsersError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'GetUsersError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$GoogleConnect extends GoogleConnect {
  @override
  final ActionResult result;

  factory _$GoogleConnect([void Function(GoogleConnectBuilder)? updates]) =>
      (new GoogleConnectBuilder()..update(updates)).build();

  _$GoogleConnect._({required this.result}) : super._() {
    BuiltValueNullFieldError.checkNotNull(result, 'GoogleConnect', 'result');
  }

  @override
  GoogleConnect rebuild(void Function(GoogleConnectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleConnectBuilder toBuilder() => new GoogleConnectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GoogleConnect && result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc(0, result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GoogleConnect')..add('result', result))
        .toString();
  }
}

class GoogleConnectBuilder
    implements Builder<GoogleConnect, GoogleConnectBuilder> {
  _$GoogleConnect? _$v;

  ActionResult? _result;
  ActionResult? get result => _$this._result;
  set result(ActionResult? result) => _$this._result = result;

  GoogleConnectBuilder();

  GoogleConnectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleConnect other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoogleConnect;
  }

  @override
  void update(void Function(GoogleConnectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleConnect build() {
    final _$result = _$v ??
        new _$GoogleConnect._(
            result: BuiltValueNullFieldError.checkNotNull(
                result, 'GoogleConnect', 'result'));
    replace(_$result);
    return _$result;
  }
}

class _$GoogleConnectSuccessful extends GoogleConnectSuccessful {
  @override
  final AppUser user;

  factory _$GoogleConnectSuccessful(
          [void Function(GoogleConnectSuccessfulBuilder)? updates]) =>
      (new GoogleConnectSuccessfulBuilder()..update(updates)).build();

  _$GoogleConnectSuccessful._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        user, 'GoogleConnectSuccessful', 'user');
  }

  @override
  GoogleConnectSuccessful rebuild(
          void Function(GoogleConnectSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleConnectSuccessfulBuilder toBuilder() =>
      new GoogleConnectSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleConnectSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GoogleConnectSuccessful')
          ..add('user', user))
        .toString();
  }
}

class GoogleConnectSuccessfulBuilder
    implements
        Builder<GoogleConnectSuccessful, GoogleConnectSuccessfulBuilder> {
  _$GoogleConnectSuccessful? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  GoogleConnectSuccessfulBuilder();

  GoogleConnectSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleConnectSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoogleConnectSuccessful;
  }

  @override
  void update(void Function(GoogleConnectSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleConnectSuccessful build() {
    _$GoogleConnectSuccessful _$result;
    try {
      _$result = _$v ?? new _$GoogleConnectSuccessful._(user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GoogleConnectSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GoogleConnectError extends GoogleConnectError {
  @override
  final Object error;

  factory _$GoogleConnectError(
          [void Function(GoogleConnectErrorBuilder)? updates]) =>
      (new GoogleConnectErrorBuilder()..update(updates)).build();

  _$GoogleConnectError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'GoogleConnectError', 'error');
  }

  @override
  GoogleConnectError rebuild(
          void Function(GoogleConnectErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleConnectErrorBuilder toBuilder() =>
      new GoogleConnectErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleConnectError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GoogleConnectError')
          ..add('error', error))
        .toString();
  }
}

class GoogleConnectErrorBuilder
    implements Builder<GoogleConnectError, GoogleConnectErrorBuilder> {
  _$GoogleConnectError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  GoogleConnectErrorBuilder();

  GoogleConnectErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleConnectError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoogleConnectError;
  }

  @override
  void update(void Function(GoogleConnectErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleConnectError build() {
    final _$result = _$v ??
        new _$GoogleConnectError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'GoogleConnectError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$LogOut extends LogOut {
  factory _$LogOut([void Function(LogOutBuilder)? updates]) =>
      (new LogOutBuilder()..update(updates)).build();

  _$LogOut._() : super._();

  @override
  LogOut rebuild(void Function(LogOutBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogOutBuilder toBuilder() => new LogOutBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogOut;
  }

  @override
  int get hashCode {
    return 704536295;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LogOut').toString();
  }
}

class LogOutBuilder implements Builder<LogOut, LogOutBuilder> {
  _$LogOut? _$v;

  LogOutBuilder();

  @override
  void replace(LogOut other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogOut;
  }

  @override
  void update(void Function(LogOutBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogOut build() {
    final _$result = _$v ?? new _$LogOut._();
    replace(_$result);
    return _$result;
  }
}

class _$LogOutSuccessful extends LogOutSuccessful {
  factory _$LogOutSuccessful(
          [void Function(LogOutSuccessfulBuilder)? updates]) =>
      (new LogOutSuccessfulBuilder()..update(updates)).build();

  _$LogOutSuccessful._() : super._();

  @override
  LogOutSuccessful rebuild(void Function(LogOutSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogOutSuccessfulBuilder toBuilder() =>
      new LogOutSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogOutSuccessful;
  }

  @override
  int get hashCode {
    return 383541703;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LogOutSuccessful').toString();
  }
}

class LogOutSuccessfulBuilder
    implements Builder<LogOutSuccessful, LogOutSuccessfulBuilder> {
  _$LogOutSuccessful? _$v;

  LogOutSuccessfulBuilder();

  @override
  void replace(LogOutSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogOutSuccessful;
  }

  @override
  void update(void Function(LogOutSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogOutSuccessful build() {
    final _$result = _$v ?? new _$LogOutSuccessful._();
    replace(_$result);
    return _$result;
  }
}

class _$LogOutError extends LogOutError {
  @override
  final Object error;

  factory _$LogOutError([void Function(LogOutErrorBuilder)? updates]) =>
      (new LogOutErrorBuilder()..update(updates)).build();

  _$LogOutError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'LogOutError', 'error');
  }

  @override
  LogOutError rebuild(void Function(LogOutErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogOutErrorBuilder toBuilder() => new LogOutErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogOutError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LogOutError')..add('error', error))
        .toString();
  }
}

class LogOutErrorBuilder implements Builder<LogOutError, LogOutErrorBuilder> {
  _$LogOutError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  LogOutErrorBuilder();

  LogOutErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogOutError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogOutError;
  }

  @override
  void update(void Function(LogOutErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LogOutError build() {
    final _$result = _$v ??
        new _$LogOutError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'LogOutError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$Registration extends Registration {
  @override
  final ActionResult result;

  factory _$Registration([void Function(RegistrationBuilder)? updates]) =>
      (new RegistrationBuilder()..update(updates)).build();

  _$Registration._({required this.result}) : super._() {
    BuiltValueNullFieldError.checkNotNull(result, 'Registration', 'result');
  }

  @override
  Registration rebuild(void Function(RegistrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationBuilder toBuilder() => new RegistrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Registration && result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc(0, result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Registration')..add('result', result))
        .toString();
  }
}

class RegistrationBuilder
    implements Builder<Registration, RegistrationBuilder> {
  _$Registration? _$v;

  ActionResult? _result;
  ActionResult? get result => _$this._result;
  set result(ActionResult? result) => _$this._result = result;

  RegistrationBuilder();

  RegistrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Registration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Registration;
  }

  @override
  void update(void Function(RegistrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Registration build() {
    final _$result = _$v ??
        new _$Registration._(
            result: BuiltValueNullFieldError.checkNotNull(
                result, 'Registration', 'result'));
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationSuccessful extends RegistrationSuccessful {
  @override
  final AppUser user;

  factory _$RegistrationSuccessful(
          [void Function(RegistrationSuccessfulBuilder)? updates]) =>
      (new RegistrationSuccessfulBuilder()..update(updates)).build();

  _$RegistrationSuccessful._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        user, 'RegistrationSuccessful', 'user');
  }

  @override
  RegistrationSuccessful rebuild(
          void Function(RegistrationSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationSuccessfulBuilder toBuilder() =>
      new RegistrationSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationSuccessful')
          ..add('user', user))
        .toString();
  }
}

class RegistrationSuccessfulBuilder
    implements Builder<RegistrationSuccessful, RegistrationSuccessfulBuilder> {
  _$RegistrationSuccessful? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  RegistrationSuccessfulBuilder();

  RegistrationSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistrationSuccessful;
  }

  @override
  void update(void Function(RegistrationSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationSuccessful build() {
    _$RegistrationSuccessful _$result;
    try {
      _$result = _$v ?? new _$RegistrationSuccessful._(user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RegistrationSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationError extends RegistrationError {
  @override
  final Object error;

  factory _$RegistrationError(
          [void Function(RegistrationErrorBuilder)? updates]) =>
      (new RegistrationErrorBuilder()..update(updates)).build();

  _$RegistrationError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'RegistrationError', 'error');
  }

  @override
  RegistrationError rebuild(void Function(RegistrationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationErrorBuilder toBuilder() =>
      new RegistrationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationError')
          ..add('error', error))
        .toString();
  }
}

class RegistrationErrorBuilder
    implements Builder<RegistrationError, RegistrationErrorBuilder> {
  _$RegistrationError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  RegistrationErrorBuilder();

  RegistrationErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistrationError;
  }

  @override
  void update(void Function(RegistrationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationError build() {
    final _$result = _$v ??
        new _$RegistrationError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'RegistrationError', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
