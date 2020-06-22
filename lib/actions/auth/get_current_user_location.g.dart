// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_current_user_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCurrentUserLocation extends GetCurrentUserLocation {
  @override
  final LatLng location;

  factory _$GetCurrentUserLocation(
          [void Function(GetCurrentUserLocationBuilder) updates]) =>
      (new GetCurrentUserLocationBuilder()..update(updates)).build();

  _$GetCurrentUserLocation._({this.location}) : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError('GetCurrentUserLocation', 'location');
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
  _$GetCurrentUserLocation _$v;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  GetCurrentUserLocationBuilder();

  GetCurrentUserLocationBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location;
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
    final _$result = _$v ?? new _$GetCurrentUserLocation._(location: location);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
