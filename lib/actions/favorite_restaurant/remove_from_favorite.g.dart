// GENERATED CODE - DO NOT MODIFY BY HAND

part of remove_from_favorite;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoveFromFavorite extends RemoveFromFavorite {
  @override
  final String favoriteRestaurantId;

  factory _$RemoveFromFavorite(
          [void Function(RemoveFromFavoriteBuilder) updates]) =>
      (new RemoveFromFavoriteBuilder()..update(updates)).build();

  _$RemoveFromFavorite._({this.favoriteRestaurantId}) : super._() {
    if (favoriteRestaurantId == null) {
      throw new BuiltValueNullFieldError(
          'RemoveFromFavorite', 'favoriteRestaurantId');
    }
  }

  @override
  RemoveFromFavorite rebuild(
          void Function(RemoveFromFavoriteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFromFavoriteBuilder toBuilder() =>
      new RemoveFromFavoriteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFromFavorite &&
        favoriteRestaurantId == other.favoriteRestaurantId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, favoriteRestaurantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFromFavorite')
          ..add('favoriteRestaurantId', favoriteRestaurantId))
        .toString();
  }
}

class RemoveFromFavoriteBuilder
    implements Builder<RemoveFromFavorite, RemoveFromFavoriteBuilder> {
  _$RemoveFromFavorite _$v;

  String _favoriteRestaurantId;
  String get favoriteRestaurantId => _$this._favoriteRestaurantId;
  set favoriteRestaurantId(String favoriteRestaurantId) =>
      _$this._favoriteRestaurantId = favoriteRestaurantId;

  RemoveFromFavoriteBuilder();

  RemoveFromFavoriteBuilder get _$this {
    if (_$v != null) {
      _favoriteRestaurantId = _$v.favoriteRestaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavorite other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RemoveFromFavorite;
  }

  @override
  void update(void Function(RemoveFromFavoriteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFromFavorite build() {
    final _$result = _$v ??
        new _$RemoveFromFavorite._(favoriteRestaurantId: favoriteRestaurantId);
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromFavoriteSuccessful extends RemoveFromFavoriteSuccessful {
  @override
  final String favoriteRestaurantId;

  factory _$RemoveFromFavoriteSuccessful(
          [void Function(RemoveFromFavoriteSuccessfulBuilder) updates]) =>
      (new RemoveFromFavoriteSuccessfulBuilder()..update(updates)).build();

  _$RemoveFromFavoriteSuccessful._({this.favoriteRestaurantId}) : super._() {
    if (favoriteRestaurantId == null) {
      throw new BuiltValueNullFieldError(
          'RemoveFromFavoriteSuccessful', 'favoriteRestaurantId');
    }
  }

  @override
  RemoveFromFavoriteSuccessful rebuild(
          void Function(RemoveFromFavoriteSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFromFavoriteSuccessfulBuilder toBuilder() =>
      new RemoveFromFavoriteSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFromFavoriteSuccessful &&
        favoriteRestaurantId == other.favoriteRestaurantId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, favoriteRestaurantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFromFavoriteSuccessful')
          ..add('favoriteRestaurantId', favoriteRestaurantId))
        .toString();
  }
}

class RemoveFromFavoriteSuccessfulBuilder
    implements
        Builder<RemoveFromFavoriteSuccessful,
            RemoveFromFavoriteSuccessfulBuilder> {
  _$RemoveFromFavoriteSuccessful _$v;

  String _favoriteRestaurantId;
  String get favoriteRestaurantId => _$this._favoriteRestaurantId;
  set favoriteRestaurantId(String favoriteRestaurantId) =>
      _$this._favoriteRestaurantId = favoriteRestaurantId;

  RemoveFromFavoriteSuccessfulBuilder();

  RemoveFromFavoriteSuccessfulBuilder get _$this {
    if (_$v != null) {
      _favoriteRestaurantId = _$v.favoriteRestaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavoriteSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RemoveFromFavoriteSuccessful;
  }

  @override
  void update(void Function(RemoveFromFavoriteSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFromFavoriteSuccessful build() {
    final _$result = _$v ??
        new _$RemoveFromFavoriteSuccessful._(
            favoriteRestaurantId: favoriteRestaurantId);
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromFavoriteError extends RemoveFromFavoriteError {
  @override
  final Object error;

  factory _$RemoveFromFavoriteError(
          [void Function(RemoveFromFavoriteErrorBuilder) updates]) =>
      (new RemoveFromFavoriteErrorBuilder()..update(updates)).build();

  _$RemoveFromFavoriteError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('RemoveFromFavoriteError', 'error');
    }
  }

  @override
  RemoveFromFavoriteError rebuild(
          void Function(RemoveFromFavoriteErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFromFavoriteErrorBuilder toBuilder() =>
      new RemoveFromFavoriteErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFromFavoriteError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveFromFavoriteError')
          ..add('error', error))
        .toString();
  }
}

class RemoveFromFavoriteErrorBuilder
    implements
        Builder<RemoveFromFavoriteError, RemoveFromFavoriteErrorBuilder> {
  _$RemoveFromFavoriteError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  RemoveFromFavoriteErrorBuilder();

  RemoveFromFavoriteErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavoriteError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RemoveFromFavoriteError;
  }

  @override
  void update(void Function(RemoveFromFavoriteErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFromFavoriteError build() {
    final _$result = _$v ?? new _$RemoveFromFavoriteError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
