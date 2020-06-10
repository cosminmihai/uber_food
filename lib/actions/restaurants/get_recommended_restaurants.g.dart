// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_recommended_restaurants;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRecommendedRestaurants extends GetRecommendedRestaurants {
  factory _$GetRecommendedRestaurants(
          [void Function(GetRecommendedRestaurantsBuilder) updates]) =>
      (new GetRecommendedRestaurantsBuilder()..update(updates)).build();

  _$GetRecommendedRestaurants._() : super._();

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
    return other is GetRecommendedRestaurants;
  }

  @override
  int get hashCode {
    return 635252998;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetRecommendedRestaurants').toString();
  }
}

class GetRecommendedRestaurantsBuilder
    implements
        Builder<GetRecommendedRestaurants, GetRecommendedRestaurantsBuilder> {
  _$GetRecommendedRestaurants _$v;

  GetRecommendedRestaurantsBuilder();

  @override
  void replace(GetRecommendedRestaurants other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetRecommendedRestaurants;
  }

  @override
  void update(void Function(GetRecommendedRestaurantsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetRecommendedRestaurants build() {
    final _$result = _$v ?? new _$GetRecommendedRestaurants._();
    replace(_$result);
    return _$result;
  }
}

class _$GetRecommendedRestaurantsSuccessful
    extends GetRecommendedRestaurantsSuccessful {
  @override
  final BuiltList<Restaurant> recommendedRestaurants;

  factory _$GetRecommendedRestaurantsSuccessful(
          [void Function(GetRecommendedRestaurantsSuccessfulBuilder)
              updates]) =>
      (new GetRecommendedRestaurantsSuccessfulBuilder()..update(updates))
          .build();

  _$GetRecommendedRestaurantsSuccessful._({this.recommendedRestaurants})
      : super._() {
    if (recommendedRestaurants == null) {
      throw new BuiltValueNullFieldError(
          'GetRecommendedRestaurantsSuccessful', 'recommendedRestaurants');
    }
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
  _$GetRecommendedRestaurantsSuccessful _$v;

  ListBuilder<Restaurant> _recommendedRestaurants;
  ListBuilder<Restaurant> get recommendedRestaurants =>
      _$this._recommendedRestaurants ??= new ListBuilder<Restaurant>();
  set recommendedRestaurants(ListBuilder<Restaurant> recommendedRestaurants) =>
      _$this._recommendedRestaurants = recommendedRestaurants;

  GetRecommendedRestaurantsSuccessfulBuilder();

  GetRecommendedRestaurantsSuccessfulBuilder get _$this {
    if (_$v != null) {
      _recommendedRestaurants = _$v.recommendedRestaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecommendedRestaurantsSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetRecommendedRestaurantsSuccessful;
  }

  @override
  void update(
      void Function(GetRecommendedRestaurantsSuccessfulBuilder) updates) {
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
      String _$failedField;
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
          [void Function(GetRecommendedRestaurantsErrorBuilder) updates]) =>
      (new GetRecommendedRestaurantsErrorBuilder()..update(updates)).build();

  _$GetRecommendedRestaurantsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError(
          'GetRecommendedRestaurantsError', 'error');
    }
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
  _$GetRecommendedRestaurantsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetRecommendedRestaurantsErrorBuilder();

  GetRecommendedRestaurantsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecommendedRestaurantsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetRecommendedRestaurantsError;
  }

  @override
  void update(void Function(GetRecommendedRestaurantsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetRecommendedRestaurantsError build() {
    final _$result =
        _$v ?? new _$GetRecommendedRestaurantsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
