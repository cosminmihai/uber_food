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
      'searchedRestaurants',
      serializers.serialize(object.searchedRestaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurant)])),
      'recommendedRestaurants',
      serializers.serialize(object.recommendedRestaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurant)])),
    ];
    if (object.query != null) {
      result
        ..add('query')
        ..add(serializers.serialize(object.query,
            specifiedType: const FullType(String)));
    }
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
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantsState extends RestaurantsState {
  @override
  final BuiltList<Restaurant> searchedRestaurants;
  @override
  final BuiltList<Restaurant> recommendedRestaurants;
  @override
  final String query;

  factory _$RestaurantsState(
          [void Function(RestaurantsStateBuilder) updates]) =>
      (new RestaurantsStateBuilder()..update(updates)).build();

  _$RestaurantsState._(
      {this.searchedRestaurants, this.recommendedRestaurants, this.query})
      : super._() {
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
        searchedRestaurants == other.searchedRestaurants &&
        recommendedRestaurants == other.recommendedRestaurants &&
        query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, searchedRestaurants.hashCode),
            recommendedRestaurants.hashCode),
        query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantsState')
          ..add('searchedRestaurants', searchedRestaurants)
          ..add('recommendedRestaurants', recommendedRestaurants)
          ..add('query', query))
        .toString();
  }
}

class RestaurantsStateBuilder
    implements Builder<RestaurantsState, RestaurantsStateBuilder> {
  _$RestaurantsState _$v;

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

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  RestaurantsStateBuilder();

  RestaurantsStateBuilder get _$this {
    if (_$v != null) {
      _searchedRestaurants = _$v.searchedRestaurants?.toBuilder();
      _recommendedRestaurants = _$v.recommendedRestaurants?.toBuilder();
      _query = _$v.query;
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
              searchedRestaurants: searchedRestaurants.build(),
              recommendedRestaurants: recommendedRestaurants.build(),
              query: query);
    } catch (_) {
      String _$failedField;
      try {
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
