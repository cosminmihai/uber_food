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
      'usersForReviews',
      serializers.serialize(object.usersForReviews,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppUser)])),
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
        case 'usersForReviews':
          result.usersForReviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(AppUser)])));
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
  final BuiltMap<String, AppUser> usersForReviews;

  factory _$AuthState([void Function(AuthStateBuilder) updates]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.user, this.usersForReviews}) : super._() {
    if (usersForReviews == null) {
      throw new BuiltValueNullFieldError('AuthState', 'usersForReviews');
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
  _$AuthState _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  MapBuilder<String, AppUser> _usersForReviews;
  MapBuilder<String, AppUser> get usersForReviews =>
      _$this._usersForReviews ??= new MapBuilder<String, AppUser>();
  set usersForReviews(MapBuilder<String, AppUser> usersForReviews) =>
      _$this._usersForReviews = usersForReviews;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _usersForReviews = _$v.usersForReviews?.toBuilder();
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
              user: _user?.build(), usersForReviews: usersForReviews.build());
    } catch (_) {
      String _$failedField;
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
