// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'auth',
      serializers.serialize(object.auth,
          specifiedType: const FullType(AuthState)),
      'restaurantState',
      serializers.serialize(object.restaurantState,
          specifiedType: const FullType(RestaurantsState)),
      'reviewsState',
      serializers.serialize(object.reviewsState,
          specifiedType: const FullType(ReviewsState)),
      'favoriteRestaurantsState',
      serializers.serialize(object.favoriteRestaurantsState,
          specifiedType: const FullType(FavoriteRestaurantsState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'restaurantState':
          result.restaurantState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RestaurantsState))
              as RestaurantsState);
          break;
        case 'reviewsState':
          result.reviewsState.replace(serializers.deserialize(value,
              specifiedType: const FullType(ReviewsState)) as ReviewsState);
          break;
        case 'favoriteRestaurantsState':
          result.favoriteRestaurantsState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FavoriteRestaurantsState))
              as FavoriteRestaurantsState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AuthState auth;
  @override
  final RestaurantsState restaurantState;
  @override
  final ReviewsState reviewsState;
  @override
  final FavoriteRestaurantsState favoriteRestaurantsState;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.auth,
      this.restaurantState,
      this.reviewsState,
      this.favoriteRestaurantsState})
      : super._() {
    if (auth == null) {
      throw new BuiltValueNullFieldError('AppState', 'auth');
    }
    if (restaurantState == null) {
      throw new BuiltValueNullFieldError('AppState', 'restaurantState');
    }
    if (reviewsState == null) {
      throw new BuiltValueNullFieldError('AppState', 'reviewsState');
    }
    if (favoriteRestaurantsState == null) {
      throw new BuiltValueNullFieldError(
          'AppState', 'favoriteRestaurantsState');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        auth == other.auth &&
        restaurantState == other.restaurantState &&
        reviewsState == other.reviewsState &&
        favoriteRestaurantsState == other.favoriteRestaurantsState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, auth.hashCode), restaurantState.hashCode),
            reviewsState.hashCode),
        favoriteRestaurantsState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('auth', auth)
          ..add('restaurantState', restaurantState)
          ..add('reviewsState', reviewsState)
          ..add('favoriteRestaurantsState', favoriteRestaurantsState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  RestaurantsStateBuilder _restaurantState;
  RestaurantsStateBuilder get restaurantState =>
      _$this._restaurantState ??= new RestaurantsStateBuilder();
  set restaurantState(RestaurantsStateBuilder restaurantState) =>
      _$this._restaurantState = restaurantState;

  ReviewsStateBuilder _reviewsState;
  ReviewsStateBuilder get reviewsState =>
      _$this._reviewsState ??= new ReviewsStateBuilder();
  set reviewsState(ReviewsStateBuilder reviewsState) =>
      _$this._reviewsState = reviewsState;

  FavoriteRestaurantsStateBuilder _favoriteRestaurantsState;
  FavoriteRestaurantsStateBuilder get favoriteRestaurantsState =>
      _$this._favoriteRestaurantsState ??=
          new FavoriteRestaurantsStateBuilder();
  set favoriteRestaurantsState(
          FavoriteRestaurantsStateBuilder favoriteRestaurantsState) =>
      _$this._favoriteRestaurantsState = favoriteRestaurantsState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _auth = _$v.auth?.toBuilder();
      _restaurantState = _$v.restaurantState?.toBuilder();
      _reviewsState = _$v.reviewsState?.toBuilder();
      _favoriteRestaurantsState = _$v.favoriteRestaurantsState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              auth: auth.build(),
              restaurantState: restaurantState.build(),
              reviewsState: reviewsState.build(),
              favoriteRestaurantsState: favoriteRestaurantsState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'restaurantState';
        restaurantState.build();
        _$failedField = 'reviewsState';
        reviewsState.build();
        _$failedField = 'favoriteRestaurantsState';
        favoriteRestaurantsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
