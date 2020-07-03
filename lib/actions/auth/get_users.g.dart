// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_users;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsers extends GetUsers {
  factory _$GetUsers([void Function(GetUsersBuilder) updates]) =>
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
  _$GetUsers _$v;

  GetUsersBuilder();

  @override
  void replace(GetUsers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUsers;
  }

  @override
  void update(void Function(GetUsersBuilder) updates) {
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
          [void Function(GetUsersSuccessfulBuilder) updates]) =>
      (new GetUsersSuccessfulBuilder()..update(updates)).build();

  _$GetUsersSuccessful._({this.users}) : super._() {
    if (users == null) {
      throw new BuiltValueNullFieldError('GetUsersSuccessful', 'users');
    }
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
  _$GetUsersSuccessful _$v;

  ListBuilder<AppUser> _users;
  ListBuilder<AppUser> get users =>
      _$this._users ??= new ListBuilder<AppUser>();
  set users(ListBuilder<AppUser> users) => _$this._users = users;

  GetUsersSuccessfulBuilder();

  GetUsersSuccessfulBuilder get _$this {
    if (_$v != null) {
      _users = _$v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsersSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUsersSuccessful;
  }

  @override
  void update(void Function(GetUsersSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsersSuccessful build() {
    _$GetUsersSuccessful _$result;
    try {
      _$result = _$v ?? new _$GetUsersSuccessful._(users: users.build());
    } catch (_) {
      String _$failedField;
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

  factory _$GetUsersError([void Function(GetUsersErrorBuilder) updates]) =>
      (new GetUsersErrorBuilder()..update(updates)).build();

  _$GetUsersError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GetUsersError', 'error');
    }
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
  _$GetUsersError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetUsersErrorBuilder();

  GetUsersErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsersError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUsersError;
  }

  @override
  void update(void Function(GetUsersErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsersError build() {
    final _$result = _$v ?? new _$GetUsersError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
