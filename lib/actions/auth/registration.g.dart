// GENERATED CODE - DO NOT MODIFY BY HAND

part of registration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Registration extends Registration {
  @override
  final ActionResult result;

  factory _$Registration([void Function(RegistrationBuilder) updates]) =>
      (new RegistrationBuilder()..update(updates)).build();

  _$Registration._({this.result}) : super._() {
    if (result == null) {
      throw new BuiltValueNullFieldError('Registration', 'result');
    }
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
  _$Registration _$v;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  RegistrationBuilder();

  RegistrationBuilder get _$this {
    if (_$v != null) {
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Registration other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Registration;
  }

  @override
  void update(void Function(RegistrationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Registration build() {
    final _$result = _$v ?? new _$Registration._(result: result);
    replace(_$result);
    return _$result;
  }
}

class _$RegistrationSuccessful extends RegistrationSuccessful {
  @override
  final AppUser user;

  factory _$RegistrationSuccessful(
          [void Function(RegistrationSuccessfulBuilder) updates]) =>
      (new RegistrationSuccessfulBuilder()..update(updates)).build();

  _$RegistrationSuccessful._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('RegistrationSuccessful', 'user');
    }
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
  _$RegistrationSuccessful _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  RegistrationSuccessfulBuilder();

  RegistrationSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegistrationSuccessful;
  }

  @override
  void update(void Function(RegistrationSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationSuccessful build() {
    _$RegistrationSuccessful _$result;
    try {
      _$result = _$v ?? new _$RegistrationSuccessful._(user: user.build());
    } catch (_) {
      String _$failedField;
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
          [void Function(RegistrationErrorBuilder) updates]) =>
      (new RegistrationErrorBuilder()..update(updates)).build();

  _$RegistrationError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('RegistrationError', 'error');
    }
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
  _$RegistrationError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  RegistrationErrorBuilder();

  RegistrationErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RegistrationError;
  }

  @override
  void update(void Function(RegistrationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationError build() {
    final _$result = _$v ?? new _$RegistrationError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
