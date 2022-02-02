// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'usersForReviews',
      serializers.serialize(object.usersForReviews,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppUser)])),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'usersForReviews':
          result.usersForReviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(AppUser)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  @override
  final String? photoUrl;
  @override
  final String phone;
  @override
  final LatLng userLocation;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) =>
      (new AppUserBuilder()..update(updates)).build();

  _$AppUser._(
      {required this.uid,
      required this.email,
      required this.username,
      this.photoUrl,
      required this.phone,
      required this.userLocation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(email, 'AppUser', 'email');
    BuiltValueNullFieldError.checkNotNull(username, 'AppUser', 'username');
    BuiltValueNullFieldError.checkNotNull(phone, 'AppUser', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        userLocation, 'AppUser', 'userLocation');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        email == other.email &&
        username == other.username &&
        photoUrl == other.photoUrl &&
        phone == other.phone &&
        userLocation == other.userLocation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, uid.hashCode), email.hashCode),
                    username.hashCode),
                photoUrl.hashCode),
            phone.hashCode),
        userLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')
          ..add('uid', uid)
          ..add('email', email)
          ..add('username', username)
          ..add('photoUrl', photoUrl)
          ..add('phone', phone)
          ..add('userLocation', userLocation))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  LatLng? _userLocation;
  LatLng? get userLocation => _$this._userLocation;
  set userLocation(LatLng? userLocation) => _$this._userLocation = userLocation;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _email = $v.email;
      _username = $v.username;
      _photoUrl = $v.photoUrl;
      _phone = $v.phone;
      _userLocation = $v.userLocation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    final _$result = _$v ??
        new _$AppUser._(
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'AppUser', 'email'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'AppUser', 'username'),
            photoUrl: photoUrl,
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'AppUser', 'phone'),
            userLocation: BuiltValueNullFieldError.checkNotNull(
                userLocation, 'AppUser', 'userLocation'));
    replace(_$result);
    return _$result;
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser? user;
  @override
  final BuiltMap<String, AppUser> usersForReviews;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, required this.usersForReviews}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        usersForReviews, 'AuthState', 'usersForReviews');
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        user == other.user &&
        usersForReviews == other.usersForReviews;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), usersForReviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('usersForReviews', usersForReviews))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  MapBuilder<String, AppUser>? _usersForReviews;
  MapBuilder<String, AppUser> get usersForReviews =>
      _$this._usersForReviews ??= new MapBuilder<String, AppUser>();
  set usersForReviews(MapBuilder<String, AppUser>? usersForReviews) =>
      _$this._usersForReviews = usersForReviews;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _usersForReviews = $v.usersForReviews.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              user: _user?.build(), usersForReviews: usersForReviews.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'usersForReviews';
        usersForReviews.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
