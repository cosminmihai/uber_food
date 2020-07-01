// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_to_favorite;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddToFavorite extends AddToFavorite {
  @override
  final String userId;
  @override
  final Restaurant selectedRestaurant;

  factory _$AddToFavorite([void Function(AddToFavoriteBuilder) updates]) =>
      (new AddToFavoriteBuilder()..update(updates)).build();

  _$AddToFavorite._({this.userId, this.selectedRestaurant}) : super._() {
    if (userId == null) {
      throw new BuiltValueNullFieldError('AddToFavorite', 'userId');
    }
    if (selectedRestaurant == null) {
      throw new BuiltValueNullFieldError('AddToFavorite', 'selectedRestaurant');
    }
  }

  @override
  AddToFavorite rebuild(void Function(AddToFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToFavoriteBuilder toBuilder() => new AddToFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToFavorite &&
        userId == other.userId &&
        selectedRestaurant == other.selectedRestaurant;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, userId.hashCode), selectedRestaurant.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToFavorite')
          ..add('userId', userId)
          ..add('selectedRestaurant', selectedRestaurant))
        .toString();
  }
}

class AddToFavoriteBuilder
    implements Builder<AddToFavorite, AddToFavoriteBuilder> {
  _$AddToFavorite _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  RestaurantBuilder _selectedRestaurant;
  RestaurantBuilder get selectedRestaurant =>
      _$this._selectedRestaurant ??= new RestaurantBuilder();
  set selectedRestaurant(RestaurantBuilder selectedRestaurant) =>
      _$this._selectedRestaurant = selectedRestaurant;

  AddToFavoriteBuilder();

  AddToFavoriteBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _selectedRestaurant = _$v.selectedRestaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToFavorite;
  }

  @override
  void update(void Function(AddToFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToFavorite build() {
    _$AddToFavorite _$result;
    try {
      _$result = _$v ??
          new _$AddToFavorite._(
              userId: userId, selectedRestaurant: selectedRestaurant.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'selectedRestaurant';
        selectedRestaurant.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddToFavorite', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddToFavoriteSuccessful extends AddToFavoriteSuccessful {
  @override
  final FavoriteRestaurant favoriteRestaurant;

  factory _$AddToFavoriteSuccessful(
          [void Function(AddToFavoriteSuccessfulBuilder) updates]) =>
      (new AddToFavoriteSuccessfulBuilder()..update(updates)).build();

  _$AddToFavoriteSuccessful._({this.favoriteRestaurant}) : super._() {
    if (favoriteRestaurant == null) {
      throw new BuiltValueNullFieldError(
          'AddToFavoriteSuccessful', 'favoriteRestaurant');
    }
  }

  @override
  AddToFavoriteSuccessful rebuild(
          void Function(AddToFavoriteSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToFavoriteSuccessfulBuilder toBuilder() =>
      new AddToFavoriteSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToFavoriteSuccessful &&
        favoriteRestaurant == other.favoriteRestaurant;
  }

  @override
  int get hashCode {
    return $jf($jc(0, favoriteRestaurant.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToFavoriteSuccessful')
          ..add('favoriteRestaurant', favoriteRestaurant))
        .toString();
  }
}

class AddToFavoriteSuccessfulBuilder
    implements
        Builder<AddToFavoriteSuccessful, AddToFavoriteSuccessfulBuilder> {
  _$AddToFavoriteSuccessful _$v;

  FavoriteRestaurantBuilder _favoriteRestaurant;
  FavoriteRestaurantBuilder get favoriteRestaurant =>
      _$this._favoriteRestaurant ??= new FavoriteRestaurantBuilder();
  set favoriteRestaurant(FavoriteRestaurantBuilder favoriteRestaurant) =>
      _$this._favoriteRestaurant = favoriteRestaurant;

  AddToFavoriteSuccessfulBuilder();

  AddToFavoriteSuccessfulBuilder get _$this {
    if (_$v != null) {
      _favoriteRestaurant = _$v.favoriteRestaurant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavoriteSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToFavoriteSuccessful;
  }

  @override
  void update(void Function(AddToFavoriteSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToFavoriteSuccessful build() {
    _$AddToFavoriteSuccessful _$result;
    try {
      _$result = _$v ??
          new _$AddToFavoriteSuccessful._(
              favoriteRestaurant: favoriteRestaurant.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'favoriteRestaurant';
        favoriteRestaurant.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddToFavoriteSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AddToFavoriteError extends AddToFavoriteError {
  @override
  final Object error;

  factory _$AddToFavoriteError(
          [void Function(AddToFavoriteErrorBuilder) updates]) =>
      (new AddToFavoriteErrorBuilder()..update(updates)).build();

  _$AddToFavoriteError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('AddToFavoriteError', 'error');
    }
  }

  @override
  AddToFavoriteError rebuild(
          void Function(AddToFavoriteErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToFavoriteErrorBuilder toBuilder() =>
      new AddToFavoriteErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToFavoriteError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddToFavoriteError')
          ..add('error', error))
        .toString();
  }
}

class AddToFavoriteErrorBuilder
    implements Builder<AddToFavoriteError, AddToFavoriteErrorBuilder> {
  _$AddToFavoriteError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  AddToFavoriteErrorBuilder();

  AddToFavoriteErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavoriteError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddToFavoriteError;
  }

  @override
  void update(void Function(AddToFavoriteErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToFavoriteError build() {
    final _$result = _$v ?? new _$AddToFavoriteError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
