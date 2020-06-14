// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_current_user_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCurrentUserLocation extends GetCurrentUserLocation {
  @override
  final ActionResult result;

  factory _$GetCurrentUserLocation(
          [void Function(GetCurrentUserLocationBuilder) updates]) =>
      (new GetCurrentUserLocationBuilder()..update(updates)).build();

  _$GetCurrentUserLocation._({this.result}) : super._() {
    if (result == null) {
      throw new BuiltValueNullFieldError('GetCurrentUserLocation', 'result');
    }
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
    final dynamic _$dynamicOther = other;
    return other is GetCurrentUserLocation && result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf($jc(0, result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCurrentUserLocation')
          ..add('result', result))
        .toString();
  }
}

class GetCurrentUserLocationBuilder
    implements Builder<GetCurrentUserLocation, GetCurrentUserLocationBuilder> {
  _$GetCurrentUserLocation _$v;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  GetCurrentUserLocationBuilder();

  GetCurrentUserLocationBuilder get _$this {
    if (_$v != null) {
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCurrentUserLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCurrentUserLocation;
  }

  @override
  void update(void Function(GetCurrentUserLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCurrentUserLocation build() {
    final _$result = _$v ?? new _$GetCurrentUserLocation._(result: result);
    replace(_$result);
    return _$result;
  }
}

class _$GetCurrentUserLocationSuccessful
    extends GetCurrentUserLocationSuccessful {
  @override
  final LocationData location;

  factory _$GetCurrentUserLocationSuccessful(
          [void Function(GetCurrentUserLocationSuccessfulBuilder) updates]) =>
      (new GetCurrentUserLocationSuccessfulBuilder()..update(updates)).build();

  _$GetCurrentUserLocationSuccessful._({this.location}) : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError(
          'GetCurrentUserLocationSuccessful', 'location');
    }
  }

  @override
  GetCurrentUserLocationSuccessful rebuild(
          void Function(GetCurrentUserLocationSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCurrentUserLocationSuccessfulBuilder toBuilder() =>
      new GetCurrentUserLocationSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCurrentUserLocationSuccessful &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(0, location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCurrentUserLocationSuccessful')
          ..add('location', location))
        .toString();
  }
}

class GetCurrentUserLocationSuccessfulBuilder
    implements
        Builder<GetCurrentUserLocationSuccessful,
            GetCurrentUserLocationSuccessfulBuilder> {
  _$GetCurrentUserLocationSuccessful _$v;

  LocationData _location;
  LocationData get location => _$this._location;
  set location(LocationData location) => _$this._location = location;

  GetCurrentUserLocationSuccessfulBuilder();

  GetCurrentUserLocationSuccessfulBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCurrentUserLocationSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCurrentUserLocationSuccessful;
  }

  @override
  void update(void Function(GetCurrentUserLocationSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCurrentUserLocationSuccessful build() {
    final _$result =
        _$v ?? new _$GetCurrentUserLocationSuccessful._(location: location);
    replace(_$result);
    return _$result;
  }
}

class _$GetCurrentUserLocationError extends GetCurrentUserLocationError {
  @override
  final Object error;

  factory _$GetCurrentUserLocationError(
          [void Function(GetCurrentUserLocationErrorBuilder) updates]) =>
      (new GetCurrentUserLocationErrorBuilder()..update(updates)).build();

  _$GetCurrentUserLocationError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError(
          'GetCurrentUserLocationError', 'error');
    }
  }

  @override
  GetCurrentUserLocationError rebuild(
          void Function(GetCurrentUserLocationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCurrentUserLocationErrorBuilder toBuilder() =>
      new GetCurrentUserLocationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCurrentUserLocationError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetCurrentUserLocationError')
          ..add('error', error))
        .toString();
  }
}

class GetCurrentUserLocationErrorBuilder
    implements
        Builder<GetCurrentUserLocationError,
            GetCurrentUserLocationErrorBuilder> {
  _$GetCurrentUserLocationError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetCurrentUserLocationErrorBuilder();

  GetCurrentUserLocationErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCurrentUserLocationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetCurrentUserLocationError;
  }

  @override
  void update(void Function(GetCurrentUserLocationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetCurrentUserLocationError build() {
    final _$result = _$v ?? new _$GetCurrentUserLocationError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
