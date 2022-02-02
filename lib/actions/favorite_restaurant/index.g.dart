// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorite_restaurant_actions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddToFavorite extends AddToFavorite {
  @override
  final String userId;
  @override
  final Restaurant selectedRestaurant;

  factory _$AddToFavorite([void Function(AddToFavoriteBuilder)? updates]) =>
      (new AddToFavoriteBuilder()..update(updates)).build();

  _$AddToFavorite._({required this.userId, required this.selectedRestaurant})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'AddToFavorite', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        selectedRestaurant, 'AddToFavorite', 'selectedRestaurant');
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
  _$AddToFavorite? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  RestaurantBuilder? _selectedRestaurant;
  RestaurantBuilder get selectedRestaurant =>
      _$this._selectedRestaurant ??= new RestaurantBuilder();
  set selectedRestaurant(RestaurantBuilder? selectedRestaurant) =>
      _$this._selectedRestaurant = selectedRestaurant;

  AddToFavoriteBuilder();

  AddToFavoriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _selectedRestaurant = $v.selectedRestaurant.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavorite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToFavorite;
  }

  @override
  void update(void Function(AddToFavoriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToFavorite build() {
    _$AddToFavorite _$result;
    try {
      _$result = _$v ??
          new _$AddToFavorite._(
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, 'AddToFavorite', 'userId'),
              selectedRestaurant: selectedRestaurant.build());
    } catch (_) {
      late String _$failedField;
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
          [void Function(AddToFavoriteSuccessfulBuilder)? updates]) =>
      (new AddToFavoriteSuccessfulBuilder()..update(updates)).build();

  _$AddToFavoriteSuccessful._({required this.favoriteRestaurant}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        favoriteRestaurant, 'AddToFavoriteSuccessful', 'favoriteRestaurant');
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
  _$AddToFavoriteSuccessful? _$v;

  FavoriteRestaurantBuilder? _favoriteRestaurant;
  FavoriteRestaurantBuilder get favoriteRestaurant =>
      _$this._favoriteRestaurant ??= new FavoriteRestaurantBuilder();
  set favoriteRestaurant(FavoriteRestaurantBuilder? favoriteRestaurant) =>
      _$this._favoriteRestaurant = favoriteRestaurant;

  AddToFavoriteSuccessfulBuilder();

  AddToFavoriteSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favoriteRestaurant = $v.favoriteRestaurant.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavoriteSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToFavoriteSuccessful;
  }

  @override
  void update(void Function(AddToFavoriteSuccessfulBuilder)? updates) {
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
      late String _$failedField;
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
          [void Function(AddToFavoriteErrorBuilder)? updates]) =>
      (new AddToFavoriteErrorBuilder()..update(updates)).build();

  _$AddToFavoriteError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'AddToFavoriteError', 'error');
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
  _$AddToFavoriteError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  AddToFavoriteErrorBuilder();

  AddToFavoriteErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToFavoriteError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToFavoriteError;
  }

  @override
  void update(void Function(AddToFavoriteErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddToFavoriteError build() {
    final _$result = _$v ??
        new _$AddToFavoriteError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'AddToFavoriteError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$GetFavoriteRestaurants extends GetFavoriteRestaurants {
  @override
  final String userId;

  factory _$GetFavoriteRestaurants(
          [void Function(GetFavoriteRestaurantsBuilder)? updates]) =>
      (new GetFavoriteRestaurantsBuilder()..update(updates)).build();

  _$GetFavoriteRestaurants._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, 'GetFavoriteRestaurants', 'userId');
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
  _$GetFavoriteRestaurants? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GetFavoriteRestaurantsBuilder();

  GetFavoriteRestaurantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFavoriteRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFavoriteRestaurants;
  }

  @override
  void update(void Function(GetFavoriteRestaurantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavoriteRestaurants build() {
    final _$result = _$v ??
        new _$GetFavoriteRestaurants._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'GetFavoriteRestaurants', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetFavoriteRestaurantsSuccessful
    extends GetFavoriteRestaurantsSuccessful {
  @override
  final BuiltList<FavoriteRestaurant> favoriteRestaurants;

  factory _$GetFavoriteRestaurantsSuccessful(
          [void Function(GetFavoriteRestaurantsSuccessfulBuilder)? updates]) =>
      (new GetFavoriteRestaurantsSuccessfulBuilder()..update(updates)).build();

  _$GetFavoriteRestaurantsSuccessful._({required this.favoriteRestaurants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(favoriteRestaurants,
        'GetFavoriteRestaurantsSuccessful', 'favoriteRestaurants');
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
  _$GetFavoriteRestaurantsSuccessful? _$v;

  ListBuilder<FavoriteRestaurant>? _favoriteRestaurants;
  ListBuilder<FavoriteRestaurant> get favoriteRestaurants =>
      _$this._favoriteRestaurants ??= new ListBuilder<FavoriteRestaurant>();
  set favoriteRestaurants(
          ListBuilder<FavoriteRestaurant>? favoriteRestaurants) =>
      _$this._favoriteRestaurants = favoriteRestaurants;

  GetFavoriteRestaurantsSuccessfulBuilder();

  GetFavoriteRestaurantsSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favoriteRestaurants = $v.favoriteRestaurants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFavoriteRestaurantsSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFavoriteRestaurantsSuccessful;
  }

  @override
  void update(void Function(GetFavoriteRestaurantsSuccessfulBuilder)? updates) {
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
      late String _$failedField;
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
          [void Function(GetFavoriteRestaurantsErrorBuilder)? updates]) =>
      (new GetFavoriteRestaurantsErrorBuilder()..update(updates)).build();

  _$GetFavoriteRestaurantsError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'GetFavoriteRestaurantsError', 'error');
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
  _$GetFavoriteRestaurantsError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  GetFavoriteRestaurantsErrorBuilder();

  GetFavoriteRestaurantsErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFavoriteRestaurantsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFavoriteRestaurantsError;
  }

  @override
  void update(void Function(GetFavoriteRestaurantsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetFavoriteRestaurantsError build() {
    final _$result = _$v ??
        new _$GetFavoriteRestaurantsError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'GetFavoriteRestaurantsError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$ListenForFavoriteRestaurants extends ListenForFavoriteRestaurants {
  factory _$ListenForFavoriteRestaurants(
          [void Function(ListenForFavoriteRestaurantsBuilder)? updates]) =>
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
  _$ListenForFavoriteRestaurants? _$v;

  ListenForFavoriteRestaurantsBuilder();

  @override
  void replace(ListenForFavoriteRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListenForFavoriteRestaurants;
  }

  @override
  void update(void Function(ListenForFavoriteRestaurantsBuilder)? updates) {
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
          [void Function(StopListenForFavoriteRestaurantsBuilder)? updates]) =>
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
  _$StopListenForFavoriteRestaurants? _$v;

  StopListenForFavoriteRestaurantsBuilder();

  @override
  void replace(StopListenForFavoriteRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopListenForFavoriteRestaurants;
  }

  @override
  void update(void Function(StopListenForFavoriteRestaurantsBuilder)? updates) {
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
          [void Function(OnFavoriteRestaurantsEventBuilder)? updates]) =>
      (new OnFavoriteRestaurantsEventBuilder()..update(updates)).build();

  _$OnFavoriteRestaurantsEvent._({required this.favoriteRestaurants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(favoriteRestaurants,
        'OnFavoriteRestaurantsEvent', 'favoriteRestaurants');
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
  _$OnFavoriteRestaurantsEvent? _$v;

  ListBuilder<FavoriteRestaurant>? _favoriteRestaurants;
  ListBuilder<FavoriteRestaurant> get favoriteRestaurants =>
      _$this._favoriteRestaurants ??= new ListBuilder<FavoriteRestaurant>();
  set favoriteRestaurants(
          ListBuilder<FavoriteRestaurant>? favoriteRestaurants) =>
      _$this._favoriteRestaurants = favoriteRestaurants;

  OnFavoriteRestaurantsEventBuilder();

  OnFavoriteRestaurantsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favoriteRestaurants = $v.favoriteRestaurants.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnFavoriteRestaurantsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnFavoriteRestaurantsEvent;
  }

  @override
  void update(void Function(OnFavoriteRestaurantsEventBuilder)? updates) {
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
      late String _$failedField;
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
          [void Function(ListenForFavoriteRestaurantsErrorBuilder)? updates]) =>
      (new ListenForFavoriteRestaurantsErrorBuilder()..update(updates)).build();

  _$ListenForFavoriteRestaurantsError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'ListenForFavoriteRestaurantsError', 'error');
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
  _$ListenForFavoriteRestaurantsError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  ListenForFavoriteRestaurantsErrorBuilder();

  ListenForFavoriteRestaurantsErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForFavoriteRestaurantsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListenForFavoriteRestaurantsError;
  }

  @override
  void update(
      void Function(ListenForFavoriteRestaurantsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForFavoriteRestaurantsError build() {
    final _$result = _$v ??
        new _$ListenForFavoriteRestaurantsError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ListenForFavoriteRestaurantsError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromFavorite extends RemoveFromFavorite {
  @override
  final String favoriteRestaurantId;

  factory _$RemoveFromFavorite(
          [void Function(RemoveFromFavoriteBuilder)? updates]) =>
      (new RemoveFromFavoriteBuilder()..update(updates)).build();

  _$RemoveFromFavorite._({required this.favoriteRestaurantId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        favoriteRestaurantId, 'RemoveFromFavorite', 'favoriteRestaurantId');
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
  _$RemoveFromFavorite? _$v;

  String? _favoriteRestaurantId;
  String? get favoriteRestaurantId => _$this._favoriteRestaurantId;
  set favoriteRestaurantId(String? favoriteRestaurantId) =>
      _$this._favoriteRestaurantId = favoriteRestaurantId;

  RemoveFromFavoriteBuilder();

  RemoveFromFavoriteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favoriteRestaurantId = $v.favoriteRestaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavorite other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFromFavorite;
  }

  @override
  void update(void Function(RemoveFromFavoriteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFromFavorite build() {
    final _$result = _$v ??
        new _$RemoveFromFavorite._(
            favoriteRestaurantId: BuiltValueNullFieldError.checkNotNull(
                favoriteRestaurantId,
                'RemoveFromFavorite',
                'favoriteRestaurantId'));
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromFavoriteSuccessful extends RemoveFromFavoriteSuccessful {
  @override
  final String favoriteRestaurantId;

  factory _$RemoveFromFavoriteSuccessful(
          [void Function(RemoveFromFavoriteSuccessfulBuilder)? updates]) =>
      (new RemoveFromFavoriteSuccessfulBuilder()..update(updates)).build();

  _$RemoveFromFavoriteSuccessful._({required this.favoriteRestaurantId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(favoriteRestaurantId,
        'RemoveFromFavoriteSuccessful', 'favoriteRestaurantId');
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
  _$RemoveFromFavoriteSuccessful? _$v;

  String? _favoriteRestaurantId;
  String? get favoriteRestaurantId => _$this._favoriteRestaurantId;
  set favoriteRestaurantId(String? favoriteRestaurantId) =>
      _$this._favoriteRestaurantId = favoriteRestaurantId;

  RemoveFromFavoriteSuccessfulBuilder();

  RemoveFromFavoriteSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favoriteRestaurantId = $v.favoriteRestaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavoriteSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFromFavoriteSuccessful;
  }

  @override
  void update(void Function(RemoveFromFavoriteSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFromFavoriteSuccessful build() {
    final _$result = _$v ??
        new _$RemoveFromFavoriteSuccessful._(
            favoriteRestaurantId: BuiltValueNullFieldError.checkNotNull(
                favoriteRestaurantId,
                'RemoveFromFavoriteSuccessful',
                'favoriteRestaurantId'));
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromFavoriteError extends RemoveFromFavoriteError {
  @override
  final Object error;

  factory _$RemoveFromFavoriteError(
          [void Function(RemoveFromFavoriteErrorBuilder)? updates]) =>
      (new RemoveFromFavoriteErrorBuilder()..update(updates)).build();

  _$RemoveFromFavoriteError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'RemoveFromFavoriteError', 'error');
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
  _$RemoveFromFavoriteError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  RemoveFromFavoriteErrorBuilder();

  RemoveFromFavoriteErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromFavoriteError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFromFavoriteError;
  }

  @override
  void update(void Function(RemoveFromFavoriteErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveFromFavoriteError build() {
    final _$result = _$v ??
        new _$RemoveFromFavoriteError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'RemoveFromFavoriteError', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
