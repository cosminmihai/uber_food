// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_user_for_review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserForReview extends GetUserForReview {
  @override
  final String uid;

  factory _$GetUserForReview(
          [void Function(GetUserForReviewBuilder) updates]) =>
      (new GetUserForReviewBuilder()..update(updates)).build();

  _$GetUserForReview._({this.uid}) : super._() {
    if (uid == null) {
      throw new BuiltValueNullFieldError('GetUserForReview', 'uid');
    }
  }

  @override
  GetUserForReview rebuild(void Function(GetUserForReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserForReviewBuilder toBuilder() =>
      new GetUserForReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserForReview && uid == other.uid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, uid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUserForReview')..add('uid', uid))
        .toString();
  }
}

class GetUserForReviewBuilder
    implements Builder<GetUserForReview, GetUserForReviewBuilder> {
  _$GetUserForReview _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  GetUserForReviewBuilder();

  GetUserForReviewBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserForReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUserForReview;
  }

  @override
  void update(void Function(GetUserForReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserForReview build() {
    final _$result = _$v ?? new _$GetUserForReview._(uid: uid);
    replace(_$result);
    return _$result;
  }
}

class _$GetUserForReviewSuccessful extends GetUserForReviewSuccessful {
  @override
  final AppUser user;

  factory _$GetUserForReviewSuccessful(
          [void Function(GetUserForReviewSuccessfulBuilder) updates]) =>
      (new GetUserForReviewSuccessfulBuilder()..update(updates)).build();

  _$GetUserForReviewSuccessful._({this.user}) : super._() {
    if (user == null) {
      throw new BuiltValueNullFieldError('GetUserForReviewSuccessful', 'user');
    }
  }

  @override
  GetUserForReviewSuccessful rebuild(
          void Function(GetUserForReviewSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserForReviewSuccessfulBuilder toBuilder() =>
      new GetUserForReviewSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserForReviewSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUserForReviewSuccessful')
          ..add('user', user))
        .toString();
  }
}

class GetUserForReviewSuccessfulBuilder
    implements
        Builder<GetUserForReviewSuccessful, GetUserForReviewSuccessfulBuilder> {
  _$GetUserForReviewSuccessful _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  GetUserForReviewSuccessfulBuilder();

  GetUserForReviewSuccessfulBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserForReviewSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUserForReviewSuccessful;
  }

  @override
  void update(void Function(GetUserForReviewSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserForReviewSuccessful build() {
    _$GetUserForReviewSuccessful _$result;
    try {
      _$result = _$v ?? new _$GetUserForReviewSuccessful._(user: user.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUserForReviewSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetUserForReviewError extends GetUserForReviewError {
  @override
  final Object error;

  factory _$GetUserForReviewError(
          [void Function(GetUserForReviewErrorBuilder) updates]) =>
      (new GetUserForReviewErrorBuilder()..update(updates)).build();

  _$GetUserForReviewError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GetUserForReviewError', 'error');
    }
  }

  @override
  GetUserForReviewError rebuild(
          void Function(GetUserForReviewErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserForReviewErrorBuilder toBuilder() =>
      new GetUserForReviewErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserForReviewError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUserForReviewError')
          ..add('error', error))
        .toString();
  }
}

class GetUserForReviewErrorBuilder
    implements Builder<GetUserForReviewError, GetUserForReviewErrorBuilder> {
  _$GetUserForReviewError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetUserForReviewErrorBuilder();

  GetUserForReviewErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserForReviewError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetUserForReviewError;
  }

  @override
  void update(void Function(GetUserForReviewErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserForReviewError build() {
    final _$result = _$v ?? new _$GetUserForReviewError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
