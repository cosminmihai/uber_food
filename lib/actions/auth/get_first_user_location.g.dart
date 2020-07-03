// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_first_user_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFirstUserLocation extends GetFirstUserLocation {
  factory _$GetFirstUserLocation(
          [void Function(GetFirstUserLocationBuilder) updates]) =>
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
  _$GetFirstUserLocation _$v;

  GetFirstUserLocationBuilder();

  @override
  void replace(GetFirstUserLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFirstUserLocation;
  }

  @override
  void update(void Function(GetFirstUserLocationBuilder) updates) {
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
          [void Function(GetFirstUserLocationSuccessfulBuilder) updates]) =>
      (new GetFirstUserLocationSuccessfulBuilder()..update(updates)).build();

  _$GetFirstUserLocationSuccessful._({this.location}) : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError(
          'GetFirstUserLocationSuccessful', 'location');
    }
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
  _$GetFirstUserLocationSuccessful _$v;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  GetFirstUserLocationSuccessfulBuilder();

  GetFirstUserLocationSuccessfulBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFirstUserLocationSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFirstUserLocationSuccessful;
  }

  @override
  void update(void Function(GetFirstUserLocationSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFirstUserLocationSuccessful build() {
    final _$result =
        _$v ?? new _$GetFirstUserLocationSuccessful._(location: location);
    replace(_$result);
    return _$result;
  }
}

class _$GetFirstUserLocationError extends GetFirstUserLocationError {
  @override
  final Object error;

  factory _$GetFirstUserLocationError(
          [void Function(GetFirstUserLocationErrorBuilder) updates]) =>
      (new GetFirstUserLocationErrorBuilder()..update(updates)).build();

  _$GetFirstUserLocationError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('GetFirstUserLocationError', 'error');
    }
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
  _$GetFirstUserLocationError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetFirstUserLocationErrorBuilder();

  GetFirstUserLocationErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFirstUserLocationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFirstUserLocationError;
  }

  @override
  void update(void Function(GetFirstUserLocationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFirstUserLocationError build() {
    final _$result = _$v ?? new _$GetFirstUserLocationError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
