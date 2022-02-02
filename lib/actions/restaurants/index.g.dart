// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurant_actions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterRestaurant extends FilterRestaurant {
  @override
  final String query;

  factory _$FilterRestaurant(
          [void Function(FilterRestaurantBuilder)? updates]) =>
      (new FilterRestaurantBuilder()..update(updates)).build();

  _$FilterRestaurant._({required this.query}) : super._() {
    BuiltValueNullFieldError.checkNotNull(query, 'FilterRestaurant', 'query');
  }

  @override
  FilterRestaurant rebuild(void Function(FilterRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterRestaurantBuilder toBuilder() =>
      new FilterRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterRestaurant && query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(0, query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterRestaurant')
          ..add('query', query))
        .toString();
  }
}

class FilterRestaurantBuilder
    implements Builder<FilterRestaurant, FilterRestaurantBuilder> {
  _$FilterRestaurant? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  FilterRestaurantBuilder();

  FilterRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterRestaurant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterRestaurant;
  }

  @override
  void update(void Function(FilterRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterRestaurant build() {
    final _$result = _$v ??
        new _$FilterRestaurant._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, 'FilterRestaurant', 'query'));
    replace(_$result);
    return _$result;
  }
}

class _$GetRecommendedRestaurants extends GetRecommendedRestaurants {
  @override
  final LatLng location;

  factory _$GetRecommendedRestaurants(
          [void Function(GetRecommendedRestaurantsBuilder)? updates]) =>
      (new GetRecommendedRestaurantsBuilder()..update(updates)).build();

  _$GetRecommendedRestaurants._({required this.location}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, 'GetRecommendedRestaurants', 'location');
  }

  @override
  GetRecommendedRestaurants rebuild(
          void Function(GetRecommendedRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRecommendedRestaurantsBuilder toBuilder() =>
      new GetRecommendedRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRecommendedRestaurants && location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(0, location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetRecommendedRestaurants')
          ..add('location', location))
        .toString();
  }
}

class GetRecommendedRestaurantsBuilder
    implements
        Builder<GetRecommendedRestaurants, GetRecommendedRestaurantsBuilder> {
  _$GetRecommendedRestaurants? _$v;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  GetRecommendedRestaurantsBuilder();

  GetRecommendedRestaurantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecommendedRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRecommendedRestaurants;
  }

  @override
  void update(void Function(GetRecommendedRestaurantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetRecommendedRestaurants build() {
    final _$result = _$v ??
        new _$GetRecommendedRestaurants._(
            location: BuiltValueNullFieldError.checkNotNull(
                location, 'GetRecommendedRestaurants', 'location'));
    replace(_$result);
    return _$result;
  }
}

class _$GetRecommendedRestaurantsSuccessful
    extends GetRecommendedRestaurantsSuccessful {
  @override
  final BuiltList<Restaurant> recommendedRestaurants;

  factory _$GetRecommendedRestaurantsSuccessful(
          [void Function(GetRecommendedRestaurantsSuccessfulBuilder)?
              updates]) =>
      (new GetRecommendedRestaurantsSuccessfulBuilder()..update(updates))
          .build();

  _$GetRecommendedRestaurantsSuccessful._(
      {required this.recommendedRestaurants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(recommendedRestaurants,
        'GetRecommendedRestaurantsSuccessful', 'recommendedRestaurants');
  }

  @override
  GetRecommendedRestaurantsSuccessful rebuild(
          void Function(GetRecommendedRestaurantsSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRecommendedRestaurantsSuccessfulBuilder toBuilder() =>
      new GetRecommendedRestaurantsSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRecommendedRestaurantsSuccessful &&
        recommendedRestaurants == other.recommendedRestaurants;
  }

  @override
  int get hashCode {
    return $jf($jc(0, recommendedRestaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetRecommendedRestaurantsSuccessful')
          ..add('recommendedRestaurants', recommendedRestaurants))
        .toString();
  }
}

class GetRecommendedRestaurantsSuccessfulBuilder
    implements
        Builder<GetRecommendedRestaurantsSuccessful,
            GetRecommendedRestaurantsSuccessfulBuilder> {
  _$GetRecommendedRestaurantsSuccessful? _$v;

  ListBuilder<Restaurant>? _recommendedRestaurants;
  ListBuilder<Restaurant> get recommendedRestaurants =>
      _$this._recommendedRestaurants ??= new ListBuilder<Restaurant>();
  set recommendedRestaurants(ListBuilder<Restaurant>? recommendedRestaurants) =>
      _$this._recommendedRestaurants = recommendedRestaurants;

  GetRecommendedRestaurantsSuccessfulBuilder();

  GetRecommendedRestaurantsSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recommendedRestaurants = $v.recommendedRestaurants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecommendedRestaurantsSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRecommendedRestaurantsSuccessful;
  }

  @override
  void update(
      void Function(GetRecommendedRestaurantsSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetRecommendedRestaurantsSuccessful build() {
    _$GetRecommendedRestaurantsSuccessful _$result;
    try {
      _$result = _$v ??
          new _$GetRecommendedRestaurantsSuccessful._(
              recommendedRestaurants: recommendedRestaurants.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recommendedRestaurants';
        recommendedRestaurants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetRecommendedRestaurantsSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetRecommendedRestaurantsError extends GetRecommendedRestaurantsError {
  @override
  final Object error;

  factory _$GetRecommendedRestaurantsError(
          [void Function(GetRecommendedRestaurantsErrorBuilder)? updates]) =>
      (new GetRecommendedRestaurantsErrorBuilder()..update(updates)).build();

  _$GetRecommendedRestaurantsError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'GetRecommendedRestaurantsError', 'error');
  }

  @override
  GetRecommendedRestaurantsError rebuild(
          void Function(GetRecommendedRestaurantsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRecommendedRestaurantsErrorBuilder toBuilder() =>
      new GetRecommendedRestaurantsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRecommendedRestaurantsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetRecommendedRestaurantsError')
          ..add('error', error))
        .toString();
  }
}

class GetRecommendedRestaurantsErrorBuilder
    implements
        Builder<GetRecommendedRestaurantsError,
            GetRecommendedRestaurantsErrorBuilder> {
  _$GetRecommendedRestaurantsError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  GetRecommendedRestaurantsErrorBuilder();

  GetRecommendedRestaurantsErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecommendedRestaurantsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRecommendedRestaurantsError;
  }

  @override
  void update(void Function(GetRecommendedRestaurantsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetRecommendedRestaurantsError build() {
    final _$result = _$v ??
        new _$GetRecommendedRestaurantsError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'GetRecommendedRestaurantsError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$SetSelectedRestaurant extends SetSelectedRestaurant {
  @override
  final String restaurantId;

  factory _$SetSelectedRestaurant(
          [void Function(SetSelectedRestaurantBuilder)? updates]) =>
      (new SetSelectedRestaurantBuilder()..update(updates)).build();

  _$SetSelectedRestaurant._({required this.restaurantId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restaurantId, 'SetSelectedRestaurant', 'restaurantId');
  }

  @override
  SetSelectedRestaurant rebuild(
          void Function(SetSelectedRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSelectedRestaurantBuilder toBuilder() =>
      new SetSelectedRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSelectedRestaurant && restaurantId == other.restaurantId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, restaurantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetSelectedRestaurant')
          ..add('restaurantId', restaurantId))
        .toString();
  }
}

class SetSelectedRestaurantBuilder
    implements Builder<SetSelectedRestaurant, SetSelectedRestaurantBuilder> {
  _$SetSelectedRestaurant? _$v;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  SetSelectedRestaurantBuilder();

  SetSelectedRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantId = $v.restaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSelectedRestaurant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetSelectedRestaurant;
  }

  @override
  void update(void Function(SetSelectedRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSelectedRestaurant build() {
    final _$result = _$v ??
        new _$SetSelectedRestaurant._(
            restaurantId: BuiltValueNullFieldError.checkNotNull(
                restaurantId, 'SetSelectedRestaurant', 'restaurantId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
