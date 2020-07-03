// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'users',
      serializers.serialize(object.users,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AppUser)])),
      'userReviews',
      serializers.serialize(object.userReviews,
          specifiedType: const FullType(
              BuiltList, const [const FullType(RestaurantReview)])),
    ];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(AppUser)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser)) as AppUser);
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppUser)]))
              as BuiltList<Object>);
          break;
        case 'userReviews':
          result.userReviews.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RestaurantReview)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser user;
  @override
  final BuiltList<AppUser> users;
  @override
  final BuiltList<RestaurantReview> userReviews;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, this.users, this.userReviews}) : super._() {
    if (users == null) {
      throw new BuiltValueNullFieldError('AuthState', 'users');
    }
    if (userReviews == null) {
      throw new BuiltValueNullFieldError('AuthState', 'userReviews');
    }
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
        users == other.users &&
        userReviews == other.userReviews;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, user.hashCode), users.hashCode), userReviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('user', user)
          ..add('users', users)
          ..add('userReviews', userReviews))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  ListBuilder<AppUser> _users;
  ListBuilder<AppUser> get users =>
      _$this._users ??= new ListBuilder<AppUser>();
  set users(ListBuilder<AppUser> users) => _$this._users = users;

  ListBuilder<RestaurantReview> _userReviews;
  ListBuilder<RestaurantReview> get userReviews =>
      _$this._userReviews ??= new ListBuilder<RestaurantReview>();
  set userReviews(ListBuilder<RestaurantReview> userReviews) =>
      _$this._userReviews = userReviews;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _users = _$v.users?.toBuilder();
      _userReviews = _$v.userReviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              user: _user?.build(),
              users: users.build(),
              userReviews: userReviews.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'users';
        users.build();
        _$failedField = 'userReviews';
        userReviews.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
