// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_favorite_restaurants;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForFavoriteRestaurants extends ListenForFavoriteRestaurants {
  factory _$ListenForFavoriteRestaurants(
          [void Function(ListenForFavoriteRestaurantsBuilder) updates]) =>
      (new ListenForFavoriteRestaurantsBuilder()..update(updates)).build();

  _$ListenForFavoriteRestaurants._() : super._();

  @override
  ListenForFavoriteRestaurants rebuild(
          void Function(ListenForFavoriteRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForFavoriteRestaurantsBuilder toBuilder() =>
      new ListenForFavoriteRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForFavoriteRestaurants;
  }

  @override
  int get hashCode {
    return 505792960;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForFavoriteRestaurants')
        .toString();
  }
}

class ListenForFavoriteRestaurantsBuilder
    implements
        Builder<ListenForFavoriteRestaurants,
            ListenForFavoriteRestaurantsBuilder> {
  _$ListenForFavoriteRestaurants _$v;

  ListenForFavoriteRestaurantsBuilder();

  @override
  void replace(ListenForFavoriteRestaurants other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForFavoriteRestaurants;
  }

  @override
  void update(void Function(ListenForFavoriteRestaurantsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForFavoriteRestaurants build() {
    final _$result = _$v ?? new _$ListenForFavoriteRestaurants._();
    replace(_$result);
    return _$result;
  }
}

class _$StopListenForFavoriteRestaurants
    extends StopListenForFavoriteRestaurants {
  factory _$StopListenForFavoriteRestaurants(
          [void Function(StopListenForFavoriteRestaurantsBuilder) updates]) =>
      (new StopListenForFavoriteRestaurantsBuilder()..update(updates)).build();

  _$StopListenForFavoriteRestaurants._() : super._();

  @override
  StopListenForFavoriteRestaurants rebuild(
          void Function(StopListenForFavoriteRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopListenForFavoriteRestaurantsBuilder toBuilder() =>
      new StopListenForFavoriteRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopListenForFavoriteRestaurants;
  }

  @override
  int get hashCode {
    return 127054726;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StopListenForFavoriteRestaurants')
        .toString();
  }
}

class StopListenForFavoriteRestaurantsBuilder
    implements
        Builder<StopListenForFavoriteRestaurants,
            StopListenForFavoriteRestaurantsBuilder> {
  _$StopListenForFavoriteRestaurants _$v;

  StopListenForFavoriteRestaurantsBuilder();

  @override
  void replace(StopListenForFavoriteRestaurants other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopListenForFavoriteRestaurants;
  }

  @override
  void update(void Function(StopListenForFavoriteRestaurantsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopListenForFavoriteRestaurants build() {
    final _$result = _$v ?? new _$StopListenForFavoriteRestaurants._();
    replace(_$result);
    return _$result;
  }
}

class _$OnFavoriteRestaurantsEvent extends OnFavoriteRestaurantsEvent {
  @override
  final BuiltList<FavoriteRestaurant> favoriteRestaurants;

  factory _$OnFavoriteRestaurantsEvent(
          [void Function(OnFavoriteRestaurantsEventBuilder) updates]) =>
      (new OnFavoriteRestaurantsEventBuilder()..update(updates)).build();

  _$OnFavoriteRestaurantsEvent._({this.favoriteRestaurants}) : super._() {
    if (favoriteRestaurants == null) {
      throw new BuiltValueNullFieldError(
          'OnFavoriteRestaurantsEvent', 'favoriteRestaurants');
    }
  }

  @override
  OnFavoriteRestaurantsEvent rebuild(
          void Function(OnFavoriteRestaurantsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnFavoriteRestaurantsEventBuilder toBuilder() =>
      new OnFavoriteRestaurantsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnFavoriteRestaurantsEvent &&
        favoriteRestaurants == other.favoriteRestaurants;
  }

  @override
  int get hashCode {
    return $jf($jc(0, favoriteRestaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnFavoriteRestaurantsEvent')
          ..add('favoriteRestaurants', favoriteRestaurants))
        .toString();
  }
}

class OnFavoriteRestaurantsEventBuilder
    implements
        Builder<OnFavoriteRestaurantsEvent, OnFavoriteRestaurantsEventBuilder> {
  _$OnFavoriteRestaurantsEvent _$v;

  ListBuilder<FavoriteRestaurant> _favoriteRestaurants;
  ListBuilder<FavoriteRestaurant> get favoriteRestaurants =>
      _$this._favoriteRestaurants ??= new ListBuilder<FavoriteRestaurant>();
  set favoriteRestaurants(
          ListBuilder<FavoriteRestaurant> favoriteRestaurants) =>
      _$this._favoriteRestaurants = favoriteRestaurants;

  OnFavoriteRestaurantsEventBuilder();

  OnFavoriteRestaurantsEventBuilder get _$this {
    if (_$v != null) {
      _favoriteRestaurants = _$v.favoriteRestaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnFavoriteRestaurantsEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnFavoriteRestaurantsEvent;
  }

  @override
  void update(void Function(OnFavoriteRestaurantsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnFavoriteRestaurantsEvent build() {
    _$OnFavoriteRestaurantsEvent _$result;
    try {
      _$result = _$v ??
          new _$OnFavoriteRestaurantsEvent._(
              favoriteRestaurants: favoriteRestaurants.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'favoriteRestaurants';
        favoriteRestaurants.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnFavoriteRestaurantsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForFavoriteRestaurantsError
    extends ListenForFavoriteRestaurantsError {
  @override
  final Object error;

  factory _$ListenForFavoriteRestaurantsError(
          [void Function(ListenForFavoriteRestaurantsErrorBuilder) updates]) =>
      (new ListenForFavoriteRestaurantsErrorBuilder()..update(updates)).build();

  _$ListenForFavoriteRestaurantsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError(
          'ListenForFavoriteRestaurantsError', 'error');
    }
  }

  @override
  ListenForFavoriteRestaurantsError rebuild(
          void Function(ListenForFavoriteRestaurantsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForFavoriteRestaurantsErrorBuilder toBuilder() =>
      new ListenForFavoriteRestaurantsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForFavoriteRestaurantsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForFavoriteRestaurantsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForFavoriteRestaurantsErrorBuilder
    implements
        Builder<ListenForFavoriteRestaurantsError,
            ListenForFavoriteRestaurantsErrorBuilder> {
  _$ListenForFavoriteRestaurantsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForFavoriteRestaurantsErrorBuilder();

  ListenForFavoriteRestaurantsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForFavoriteRestaurantsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForFavoriteRestaurantsError;
  }

  @override
  void update(void Function(ListenForFavoriteRestaurantsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForFavoriteRestaurantsError build() {
    final _$result =
        _$v ?? new _$ListenForFavoriteRestaurantsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
