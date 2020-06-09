// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_sign_in;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoogleConnect extends GoogleConnect {
  @override
  final ActionResult result;

  factory _$GoogleConnect([void Function(GoogleConnectBuilder) updates]) =>
      (new GoogleConnectBuilder()..update(updates)).build();

  _$GoogleConnect._({this.result}) : super._() {
    if (result == null) {
      throw new BuiltValueNullFieldError('GoogleConnect', 'result');
    }
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
  _$GoogleConnect _$v;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  GoogleConnectBuilder();

  GoogleConnectBuilder get _$this {
    if (_$v != null) {
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleConnect other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GoogleConnect;
  }

  @override
  void update(void Function(GoogleConnectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleConnect build() {
    final _$result = _$v ?? new _$GoogleConnect._(result: result);
    replace(_$result);
    return _$result;
  }
}

class _$GoogleConnectSuccessful extends GoogleConnectSuccessful {
  @override
  final AppUser user;

  factory _$GoogleConnectSuccessful(
          [void Function(GoogleConnectSuccessfulBuilder) updates]) =>
      (new GoogleConnectSuccessfulBuilder()..update(updates)).build();

  _$GoogleConnectSuccessful._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('GoogleConnectSuccessful', 'user');
    }
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
  _$GoogleConnectSuccessful _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  GoogleConnectSuccessfulBuilder();

  GoogleConnectSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleConnectSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GoogleConnectSuccessful;
  }

  @override
  void update(void Function(GoogleConnectSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleConnectSuccessful build() {
    _$GoogleConnectSuccessful _$result;
    try {
      _$result = _$v ?? new _$GoogleConnectSuccessful._(user: user.build());
    } catch (_) {
      String _$failedField;
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
          [void Function(GoogleConnectErrorBuilder) updates]) =>
      (new GoogleConnectErrorBuilder()..update(updates)).build();

  _$GoogleConnectError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GoogleConnectError', 'error');
    }
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
  _$GoogleConnectError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GoogleConnectErrorBuilder();

  GoogleConnectErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleConnectError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GoogleConnectError;
  }

  @override
  void update(void Function(GoogleConnectErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleConnectError build() {
    final _$result = _$v ?? new _$GoogleConnectError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
