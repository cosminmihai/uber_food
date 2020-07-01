// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_favorite_restaurants;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFavoriteRestaurants extends GetFavoriteRestaurants {
  @override
  final String userId;

  factory _$GetFavoriteRestaurants(
          [void Function(GetFavoriteRestaurantsBuilder) updates]) =>
      (new GetFavoriteRestaurantsBuilder()..update(updates)).build();

  _$GetFavoriteRestaurants._({this.userId}) : super._() {
    if (userId == null) {
      throw new BuiltValueNullFieldError('GetFavoriteRestaurants', 'userId');
    }
  }

  @override
  GetFavoriteRestaurants rebuild(
          void Function(GetFavoriteRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavoriteRestaurantsBuilder toBuilder() =>
      new GetFavoriteRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavoriteRestaurants && userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFavoriteRestaurants')
          ..add('userId', userId))
        .toString();
  }
}

class GetFavoriteRestaurantsBuilder
    implements Builder<GetFavoriteRestaurants, GetFavoriteRestaurantsBuilder> {
  _$GetFavoriteRestaurants _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  GetFavoriteRestaurantsBuilder();

  GetFavoriteRestaurantsBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFavoriteRestaurants other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFavoriteRestaurants;
  }

  @override
  void update(void Function(GetFavoriteRestaurantsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavoriteRestaurants build() {
    final _$result = _$v ?? new _$GetFavoriteRestaurants._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GetFavoriteRestaurantsSuccessful
    extends GetFavoriteRestaurantsSuccessful {
  @override
  final BuiltList<FavoriteRestaurant> favoriteRestaurants;

  factory _$GetFavoriteRestaurantsSuccessful(
          [void Function(GetFavoriteRestaurantsSuccessfulBuilder) updates]) =>
      (new GetFavoriteRestaurantsSuccessfulBuilder()..update(updates)).build();

  _$GetFavoriteRestaurantsSuccessful._({this.favoriteRestaurants}) : super._() {
    if (favoriteRestaurants == null) {
      throw new BuiltValueNullFieldError(
          'GetFavoriteRestaurantsSuccessful', 'favoriteRestaurants');
    }
  }

  @override
  GetFavoriteRestaurantsSuccessful rebuild(
          void Function(GetFavoriteRestaurantsSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavoriteRestaurantsSuccessfulBuilder toBuilder() =>
      new GetFavoriteRestaurantsSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavoriteRestaurantsSuccessful &&
        favoriteRestaurants == other.favoriteRestaurants;
  }

  @override
  int get hashCode {
    return $jf($jc(0, favoriteRestaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFavoriteRestaurantsSuccessful')
          ..add('favoriteRestaurants', favoriteRestaurants))
        .toString();
  }
}

class GetFavoriteRestaurantsSuccessfulBuilder
    implements
        Builder<GetFavoriteRestaurantsSuccessful,
            GetFavoriteRestaurantsSuccessfulBuilder> {
  _$GetFavoriteRestaurantsSuccessful _$v;

  ListBuilder<FavoriteRestaurant> _favoriteRestaurants;
  ListBuilder<FavoriteRestaurant> get favoriteRestaurants =>
      _$this._favoriteRestaurants ??= new ListBuilder<FavoriteRestaurant>();
  set favoriteRestaurants(
          ListBuilder<FavoriteRestaurant> favoriteRestaurants) =>
      _$this._favoriteRestaurants = favoriteRestaurants;

  GetFavoriteRestaurantsSuccessfulBuilder();

  GetFavoriteRestaurantsSuccessfulBuilder get _$this {
    if (_$v != null) {
      _favoriteRestaurants = _$v.favoriteRestaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFavoriteRestaurantsSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFavoriteRestaurantsSuccessful;
  }

  @override
  void update(void Function(GetFavoriteRestaurantsSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavoriteRestaurantsSuccessful build() {
    _$GetFavoriteRestaurantsSuccessful _$result;
    try {
      _$result = _$v ??
          new _$GetFavoriteRestaurantsSuccessful._(
              favoriteRestaurants: favoriteRestaurants.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'favoriteRestaurants';
        favoriteRestaurants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetFavoriteRestaurantsSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetFavoriteRestaurantsError extends GetFavoriteRestaurantsError {
  @override
  final Object error;

  factory _$GetFavoriteRestaurantsError(
          [void Function(GetFavoriteRestaurantsErrorBuilder) updates]) =>
      (new GetFavoriteRestaurantsErrorBuilder()..update(updates)).build();

  _$GetFavoriteRestaurantsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError(
          'GetFavoriteRestaurantsError', 'error');
    }
  }

  @override
  GetFavoriteRestaurantsError rebuild(
          void Function(GetFavoriteRestaurantsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFavoriteRestaurantsErrorBuilder toBuilder() =>
      new GetFavoriteRestaurantsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFavoriteRestaurantsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetFavoriteRestaurantsError')
          ..add('error', error))
        .toString();
  }
}

class GetFavoriteRestaurantsErrorBuilder
    implements
        Builder<GetFavoriteRestaurantsError,
            GetFavoriteRestaurantsErrorBuilder> {
  _$GetFavoriteRestaurantsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  GetFavoriteRestaurantsErrorBuilder();

  GetFavoriteRestaurantsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFavoriteRestaurantsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetFavoriteRestaurantsError;
  }

  @override
  void update(void Function(GetFavoriteRestaurantsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavoriteRestaurantsError build() {
    final _$result = _$v ?? new _$GetFavoriteRestaurantsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
