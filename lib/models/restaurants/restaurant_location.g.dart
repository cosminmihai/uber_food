// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurant_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantLocation> _$restaurantLocationSerializer =
    new _$RestaurantLocationSerializer();

class _$RestaurantLocationSerializer
    implements StructuredSerializer<RestaurantLocation> {
  @override
  final Iterable<Type> types = const [RestaurantLocation, _$RestaurantLocation];
  @override
  final String wireName = 'RestaurantLocation';

  @override
  Iterable<Object> serialize(Serializers serializers, RestaurantLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'locality',
      serializers.serialize(object.locality,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'locality_verbose',
      serializers.serialize(object.localityVerbose,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RestaurantLocation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locality':
          result.locality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'locality_verbose':
          result.localityVerbose = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantLocation extends RestaurantLocation {
  @override
  final String address;
  @override
  final String locality;
  @override
  final String city;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String localityVerbose;

  factory _$RestaurantLocation(
          [void Function(RestaurantLocationBuilder) updates]) =>
      (new RestaurantLocationBuilder()..update(updates)).build();

  _$RestaurantLocation._(
      {this.address,
      this.locality,
      this.city,
      this.latitude,
      this.longitude,
      this.localityVerbose})
      : super._() {
    if (address == null) {
      throw new BuiltValueNullFieldError('RestaurantLocation', 'address');
    }
    if (locality == null) {
      throw new BuiltValueNullFieldError('RestaurantLocation', 'locality');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('RestaurantLocation', 'city');
    }
    if (latitude == null) {
      throw new BuiltValueNullFieldError('RestaurantLocation', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('RestaurantLocation', 'longitude');
    }
    if (localityVerbose == null) {
      throw new BuiltValueNullFieldError(
          'RestaurantLocation', 'localityVerbose');
    }
  }

  @override
  RestaurantLocation rebuild(
          void Function(RestaurantLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantLocationBuilder toBuilder() =>
      new RestaurantLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantLocation &&
        address == other.address &&
        locality == other.locality &&
        city == other.city &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        localityVerbose == other.localityVerbose;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, address.hashCode), locality.hashCode),
                    city.hashCode),
                latitude.hashCode),
            longitude.hashCode),
        localityVerbose.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantLocation')
          ..add('address', address)
          ..add('locality', locality)
          ..add('city', city)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('localityVerbose', localityVerbose))
        .toString();
  }
}

class RestaurantLocationBuilder
    implements Builder<RestaurantLocation, RestaurantLocationBuilder> {
  _$RestaurantLocation _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _locality;
  String get locality => _$this._locality;
  set locality(String locality) => _$this._locality = locality;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  String _localityVerbose;
  String get localityVerbose => _$this._localityVerbose;
  set localityVerbose(String localityVerbose) =>
      _$this._localityVerbose = localityVerbose;

  RestaurantLocationBuilder();

  RestaurantLocationBuilder get _$this {
    if (_$v != null) {
      _address = _$v.address;
      _locality = _$v.locality;
      _city = _$v.city;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _localityVerbose = _$v.localityVerbose;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantLocation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestaurantLocation;
  }

  @override
  void update(void Function(RestaurantLocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantLocation build() {
    final _$result = _$v ??
        new _$RestaurantLocation._(
            address: address,
            locality: locality,
            city: city,
            latitude: latitude,
            longitude: longitude,
            localityVerbose: localityVerbose);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
