// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurants_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantsState> _$restaurantsStateSerializer =
    new _$RestaurantsStateSerializer();

class _$RestaurantsStateSerializer
    implements StructuredSerializer<RestaurantsState> {
  @override
  final Iterable<Type> types = const [RestaurantsState, _$RestaurantsState];
  @override
  final String wireName = 'RestaurantsState';

  @override
  Iterable<Object> serialize(Serializers serializers, RestaurantsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userLocation',
      serializers.serialize(object.userLocation,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(double)])),
      'searchedRestaurants',
      serializers.serialize(object.searchedRestaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurant)])),
      'recommendedRestaurants',
      serializers.serialize(object.recommendedRestaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurant)])),
    ];

    return result;
  }

  @override
  RestaurantsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userLocation':
          result.userLocation.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(double)])));
          break;
        case 'searchedRestaurants':
          result.searchedRestaurants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurant)]))
              as BuiltList<Object>);
          break;
        case 'recommendedRestaurants':
          result.recommendedRestaurants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurant)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantsState extends RestaurantsState {
  @override
  final BuiltMap<String, double> userLocation;
  @override
  final BuiltList<Restaurant> searchedRestaurants;
  @override
  final BuiltList<Restaurant> recommendedRestaurants;

  factory _$RestaurantsState(
          [void Function(RestaurantsStateBuilder) updates]) =>
      (new RestaurantsStateBuilder()..update(updates)).build();

  _$RestaurantsState._(
      {this.userLocation,
      this.searchedRestaurants,
      this.recommendedRestaurants})
      : super._() {
    if (userLocation == null) {
      throw new BuiltValueNullFieldError('RestaurantsState', 'userLocation');
    }
    if (searchedRestaurants == null) {
      throw new BuiltValueNullFieldError(
          'RestaurantsState', 'searchedRestaurants');
    }
    if (recommendedRestaurants == null) {
      throw new BuiltValueNullFieldError(
          'RestaurantsState', 'recommendedRestaurants');
    }
  }

  @override
  RestaurantsState rebuild(void Function(RestaurantsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantsStateBuilder toBuilder() =>
      new RestaurantsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantsState &&
        userLocation == other.userLocation &&
        searchedRestaurants == other.searchedRestaurants &&
        recommendedRestaurants == other.recommendedRestaurants;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, userLocation.hashCode), searchedRestaurants.hashCode),
        recommendedRestaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantsState')
          ..add('userLocation', userLocation)
          ..add('searchedRestaurants', searchedRestaurants)
          ..add('recommendedRestaurants', recommendedRestaurants))
        .toString();
  }
}

class RestaurantsStateBuilder
    implements Builder<RestaurantsState, RestaurantsStateBuilder> {
  _$RestaurantsState _$v;

  MapBuilder<String, double> _userLocation;
  MapBuilder<String, double> get userLocation =>
      _$this._userLocation ??= new MapBuilder<String, double>();
  set userLocation(MapBuilder<String, double> userLocation) =>
      _$this._userLocation = userLocation;

  ListBuilder<Restaurant> _searchedRestaurants;
  ListBuilder<Restaurant> get searchedRestaurants =>
      _$this._searchedRestaurants ??= new ListBuilder<Restaurant>();
  set searchedRestaurants(ListBuilder<Restaurant> searchedRestaurants) =>
      _$this._searchedRestaurants = searchedRestaurants;

  ListBuilder<Restaurant> _recommendedRestaurants;
  ListBuilder<Restaurant> get recommendedRestaurants =>
      _$this._recommendedRestaurants ??= new ListBuilder<Restaurant>();
  set recommendedRestaurants(ListBuilder<Restaurant> recommendedRestaurants) =>
      _$this._recommendedRestaurants = recommendedRestaurants;

  RestaurantsStateBuilder();

  RestaurantsStateBuilder get _$this {
    if (_$v != null) {
      _userLocation = _$v.userLocation?.toBuilder();
      _searchedRestaurants = _$v.searchedRestaurants?.toBuilder();
      _recommendedRestaurants = _$v.recommendedRestaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestaurantsState;
  }

  @override
  void update(void Function(RestaurantsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantsState build() {
    _$RestaurantsState _$result;
    try {
      _$result = _$v ??
          new _$RestaurantsState._(
              userLocation: userLocation.build(),
              searchedRestaurants: searchedRestaurants.build(),
              recommendedRestaurants: recommendedRestaurants.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userLocation';
        userLocation.build();
        _$failedField = 'searchedRestaurants';
        searchedRestaurants.build();
        _$failedField = 'recommendedRestaurants';
        recommendedRestaurants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RestaurantsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
