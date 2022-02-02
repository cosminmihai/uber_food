// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurant_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoriteRestaurant> _$favoriteRestaurantSerializer =
    new _$FavoriteRestaurantSerializer();
Serializer<FavoriteRestaurantsState> _$favoriteRestaurantsStateSerializer =
    new _$FavoriteRestaurantsStateSerializer();
Serializer<Restaurant> _$restaurantSerializer = new _$RestaurantSerializer();
Serializer<RestaurantLocation> _$restaurantLocationSerializer =
    new _$RestaurantLocationSerializer();
Serializer<RestaurantsState> _$restaurantsStateSerializer =
    new _$RestaurantsStateSerializer();
Serializer<UserRating> _$userRatingSerializer = new _$UserRatingSerializer();

class _$FavoriteRestaurantSerializer
    implements StructuredSerializer<FavoriteRestaurant> {
  @override
  final Iterable<Type> types = const [FavoriteRestaurant, _$FavoriteRestaurant];
  @override
  final String wireName = 'FavoriteRestaurant';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FavoriteRestaurant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'restaurantData',
      serializers.serialize(object.restaurantData,
          specifiedType: const FullType(Restaurant)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FavoriteRestaurant deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteRestaurantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantData':
          result.restaurantData.replace(serializers.deserialize(value,
              specifiedType: const FullType(Restaurant))! as Restaurant);
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteRestaurantsStateSerializer
    implements StructuredSerializer<FavoriteRestaurantsState> {
  @override
  final Iterable<Type> types = const [
    FavoriteRestaurantsState,
    _$FavoriteRestaurantsState
  ];
  @override
  final String wireName = 'FavoriteRestaurantsState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FavoriteRestaurantsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'favoriteRestaurantsState',
      serializers.serialize(object.favoriteRestaurantsState,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FavoriteRestaurant)])),
    ];

    return result;
  }

  @override
  FavoriteRestaurantsState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteRestaurantsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'favoriteRestaurantsState':
          result.favoriteRestaurantsState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavoriteRestaurant)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantSerializer implements StructuredSerializer<Restaurant> {
  @override
  final Iterable<Type> types = const [Restaurant, _$Restaurant];
  @override
  final String wireName = 'Restaurant';

  @override
  Iterable<Object?> serialize(Serializers serializers, Restaurant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(RestaurantLocation)),
      'user_rating',
      serializers.serialize(object.userRating,
          specifiedType: const FullType(UserRating)),
      'has_online_delivery',
      serializers.serialize(object.hasOnlineDelivery,
          specifiedType: const FullType(bool)),
      'cuisines',
      serializers.serialize(object.cuisines,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'timings',
      serializers.serialize(object.timings,
          specifiedType: const FullType(String)),
      'currency',
      serializers.serialize(object.currency,
          specifiedType: const FullType(String)),
      'phoneNumbers',
      serializers.serialize(object.phoneNumbers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'highlights',
      serializers.serialize(object.highlights,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'menu_url',
      serializers.serialize(object.menuUrl,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.featuredPhoto;
    if (value != null) {
      result
        ..add('featured_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Restaurant deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RestaurantLocation))!
              as RestaurantLocation);
          break;
        case 'user_rating':
          result.userRating.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserRating))! as UserRating);
          break;
        case 'has_online_delivery':
          result.hasOnlineDelivery = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cuisines':
          result.cuisines.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'timings':
          result.timings = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured_image':
          result.featuredPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumbers':
          result.phoneNumbers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'highlights':
          result.highlights.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'menu_url':
          result.menuUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantLocationSerializer
    implements StructuredSerializer<RestaurantLocation> {
  @override
  final Iterable<Type> types = const [RestaurantLocation, _$RestaurantLocation];
  @override
  final String wireName = 'RestaurantLocation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RestaurantLocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'locality',
      serializers.serialize(object.locality,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'locality_verbose',
      serializers.serialize(object.localityVerbose,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RestaurantLocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locality':
          result.locality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'locality_verbose':
          result.localityVerbose = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantsStateSerializer
    implements StructuredSerializer<RestaurantsState> {
  @override
  final Iterable<Type> types = const [RestaurantsState, _$RestaurantsState];
  @override
  final String wireName = 'RestaurantsState';

  @override
  Iterable<Object?> serialize(Serializers serializers, RestaurantsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'searchedRestaurants',
      serializers.serialize(object.searchedRestaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurant)])),
      'recommendedRestaurants',
      serializers.serialize(object.recommendedRestaurants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Restaurant)])),
    ];
    Object? value;
    value = object.query;
    if (value != null) {
      result
        ..add('query')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selectedRestaurantId;
    if (value != null) {
      result
        ..add('selectedRestaurantId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RestaurantsState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchedRestaurants':
          result.searchedRestaurants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurant)]))!
              as BuiltList<Object?>);
          break;
        case 'recommendedRestaurants':
          result.recommendedRestaurants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Restaurant)]))!
              as BuiltList<Object?>);
          break;
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selectedRestaurantId':
          result.selectedRestaurantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserRatingSerializer implements StructuredSerializer<UserRating> {
  @override
  final Iterable<Type> types = const [UserRating, _$UserRating];
  @override
  final String wireName = 'UserRating';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRating object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rating_text',
      serializers.serialize(object.ratingText,
          specifiedType: const FullType(String)),
      'rating_color',
      serializers.serialize(object.ratingColor,
          specifiedType: const FullType(int)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
      'aggregate_rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  UserRating deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRatingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rating_text':
          result.ratingText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating_color':
          result.ratingColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aggregate_rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteRestaurant extends FavoriteRestaurant {
  @override
  final String id;
  @override
  final Restaurant restaurantData;
  @override
  final String userId;

  factory _$FavoriteRestaurant(
          [void Function(FavoriteRestaurantBuilder)? updates]) =>
      (new FavoriteRestaurantBuilder()..update(updates)).build();

  _$FavoriteRestaurant._(
      {required this.id, required this.restaurantData, required this.userId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'FavoriteRestaurant', 'id');
    BuiltValueNullFieldError.checkNotNull(
        restaurantData, 'FavoriteRestaurant', 'restaurantData');
    BuiltValueNullFieldError.checkNotNull(
        userId, 'FavoriteRestaurant', 'userId');
  }

  @override
  FavoriteRestaurant rebuild(
          void Function(FavoriteRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteRestaurantBuilder toBuilder() =>
      new FavoriteRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteRestaurant &&
        id == other.id &&
        restaurantData == other.restaurantData &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, id.hashCode), restaurantData.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteRestaurant')
          ..add('id', id)
          ..add('restaurantData', restaurantData)
          ..add('userId', userId))
        .toString();
  }
}

class FavoriteRestaurantBuilder
    implements Builder<FavoriteRestaurant, FavoriteRestaurantBuilder> {
  _$FavoriteRestaurant? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  RestaurantBuilder? _restaurantData;
  RestaurantBuilder get restaurantData =>
      _$this._restaurantData ??= new RestaurantBuilder();
  set restaurantData(RestaurantBuilder? restaurantData) =>
      _$this._restaurantData = restaurantData;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  FavoriteRestaurantBuilder();

  FavoriteRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _restaurantData = $v.restaurantData.toBuilder();
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteRestaurant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoriteRestaurant;
  }

  @override
  void update(void Function(FavoriteRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteRestaurant build() {
    _$FavoriteRestaurant _$result;
    try {
      _$result = _$v ??
          new _$FavoriteRestaurant._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'FavoriteRestaurant', 'id'),
              restaurantData: restaurantData.build(),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, 'FavoriteRestaurant', 'userId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restaurantData';
        restaurantData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavoriteRestaurant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FavoriteRestaurantsState extends FavoriteRestaurantsState {
  @override
  final BuiltList<FavoriteRestaurant> favoriteRestaurantsState;

  factory _$FavoriteRestaurantsState(
          [void Function(FavoriteRestaurantsStateBuilder)? updates]) =>
      (new FavoriteRestaurantsStateBuilder()..update(updates)).build();

  _$FavoriteRestaurantsState._({required this.favoriteRestaurantsState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(favoriteRestaurantsState,
        'FavoriteRestaurantsState', 'favoriteRestaurantsState');
  }

  @override
  FavoriteRestaurantsState rebuild(
          void Function(FavoriteRestaurantsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteRestaurantsStateBuilder toBuilder() =>
      new FavoriteRestaurantsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteRestaurantsState &&
        favoriteRestaurantsState == other.favoriteRestaurantsState;
  }

  @override
  int get hashCode {
    return $jf($jc(0, favoriteRestaurantsState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteRestaurantsState')
          ..add('favoriteRestaurantsState', favoriteRestaurantsState))
        .toString();
  }
}

class FavoriteRestaurantsStateBuilder
    implements
        Builder<FavoriteRestaurantsState, FavoriteRestaurantsStateBuilder> {
  _$FavoriteRestaurantsState? _$v;

  ListBuilder<FavoriteRestaurant>? _favoriteRestaurantsState;
  ListBuilder<FavoriteRestaurant> get favoriteRestaurantsState =>
      _$this._favoriteRestaurantsState ??=
          new ListBuilder<FavoriteRestaurant>();
  set favoriteRestaurantsState(
          ListBuilder<FavoriteRestaurant>? favoriteRestaurantsState) =>
      _$this._favoriteRestaurantsState = favoriteRestaurantsState;

  FavoriteRestaurantsStateBuilder();

  FavoriteRestaurantsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _favoriteRestaurantsState = $v.favoriteRestaurantsState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteRestaurantsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavoriteRestaurantsState;
  }

  @override
  void update(void Function(FavoriteRestaurantsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteRestaurantsState build() {
    _$FavoriteRestaurantsState _$result;
    try {
      _$result = _$v ??
          new _$FavoriteRestaurantsState._(
              favoriteRestaurantsState: favoriteRestaurantsState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favoriteRestaurantsState';
        favoriteRestaurantsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavoriteRestaurantsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Restaurant extends Restaurant {
  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final RestaurantLocation location;
  @override
  final UserRating userRating;
  @override
  final bool hasOnlineDelivery;
  @override
  final BuiltList<String> cuisines;
  @override
  final String timings;
  @override
  final String currency;
  @override
  final String? featuredPhoto;
  @override
  final BuiltList<String> phoneNumbers;
  @override
  final BuiltList<String> highlights;
  @override
  final String menuUrl;

  factory _$Restaurant([void Function(RestaurantBuilder)? updates]) =>
      (new RestaurantBuilder()..update(updates)).build();

  _$Restaurant._(
      {required this.id,
      required this.name,
      required this.url,
      required this.location,
      required this.userRating,
      required this.hasOnlineDelivery,
      required this.cuisines,
      required this.timings,
      required this.currency,
      this.featuredPhoto,
      required this.phoneNumbers,
      required this.highlights,
      required this.menuUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Restaurant', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Restaurant', 'name');
    BuiltValueNullFieldError.checkNotNull(url, 'Restaurant', 'url');
    BuiltValueNullFieldError.checkNotNull(location, 'Restaurant', 'location');
    BuiltValueNullFieldError.checkNotNull(
        userRating, 'Restaurant', 'userRating');
    BuiltValueNullFieldError.checkNotNull(
        hasOnlineDelivery, 'Restaurant', 'hasOnlineDelivery');
    BuiltValueNullFieldError.checkNotNull(cuisines, 'Restaurant', 'cuisines');
    BuiltValueNullFieldError.checkNotNull(timings, 'Restaurant', 'timings');
    BuiltValueNullFieldError.checkNotNull(currency, 'Restaurant', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumbers, 'Restaurant', 'phoneNumbers');
    BuiltValueNullFieldError.checkNotNull(
        highlights, 'Restaurant', 'highlights');
    BuiltValueNullFieldError.checkNotNull(menuUrl, 'Restaurant', 'menuUrl');
  }

  @override
  Restaurant rebuild(void Function(RestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantBuilder toBuilder() => new RestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Restaurant &&
        id == other.id &&
        name == other.name &&
        url == other.url &&
        location == other.location &&
        userRating == other.userRating &&
        hasOnlineDelivery == other.hasOnlineDelivery &&
        cuisines == other.cuisines &&
        timings == other.timings &&
        currency == other.currency &&
        featuredPhoto == other.featuredPhoto &&
        phoneNumbers == other.phoneNumbers &&
        highlights == other.highlights &&
        menuUrl == other.menuUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    name.hashCode),
                                                url.hashCode),
                                            location.hashCode),
                                        userRating.hashCode),
                                    hasOnlineDelivery.hashCode),
                                cuisines.hashCode),
                            timings.hashCode),
                        currency.hashCode),
                    featuredPhoto.hashCode),
                phoneNumbers.hashCode),
            highlights.hashCode),
        menuUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Restaurant')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url)
          ..add('location', location)
          ..add('userRating', userRating)
          ..add('hasOnlineDelivery', hasOnlineDelivery)
          ..add('cuisines', cuisines)
          ..add('timings', timings)
          ..add('currency', currency)
          ..add('featuredPhoto', featuredPhoto)
          ..add('phoneNumbers', phoneNumbers)
          ..add('highlights', highlights)
          ..add('menuUrl', menuUrl))
        .toString();
  }
}

class RestaurantBuilder implements Builder<Restaurant, RestaurantBuilder> {
  _$Restaurant? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  RestaurantLocationBuilder? _location;
  RestaurantLocationBuilder get location =>
      _$this._location ??= new RestaurantLocationBuilder();
  set location(RestaurantLocationBuilder? location) =>
      _$this._location = location;

  UserRatingBuilder? _userRating;
  UserRatingBuilder get userRating =>
      _$this._userRating ??= new UserRatingBuilder();
  set userRating(UserRatingBuilder? userRating) =>
      _$this._userRating = userRating;

  bool? _hasOnlineDelivery;
  bool? get hasOnlineDelivery => _$this._hasOnlineDelivery;
  set hasOnlineDelivery(bool? hasOnlineDelivery) =>
      _$this._hasOnlineDelivery = hasOnlineDelivery;

  ListBuilder<String>? _cuisines;
  ListBuilder<String> get cuisines =>
      _$this._cuisines ??= new ListBuilder<String>();
  set cuisines(ListBuilder<String>? cuisines) => _$this._cuisines = cuisines;

  String? _timings;
  String? get timings => _$this._timings;
  set timings(String? timings) => _$this._timings = timings;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _featuredPhoto;
  String? get featuredPhoto => _$this._featuredPhoto;
  set featuredPhoto(String? featuredPhoto) =>
      _$this._featuredPhoto = featuredPhoto;

  ListBuilder<String>? _phoneNumbers;
  ListBuilder<String> get phoneNumbers =>
      _$this._phoneNumbers ??= new ListBuilder<String>();
  set phoneNumbers(ListBuilder<String>? phoneNumbers) =>
      _$this._phoneNumbers = phoneNumbers;

  ListBuilder<String>? _highlights;
  ListBuilder<String> get highlights =>
      _$this._highlights ??= new ListBuilder<String>();
  set highlights(ListBuilder<String>? highlights) =>
      _$this._highlights = highlights;

  String? _menuUrl;
  String? get menuUrl => _$this._menuUrl;
  set menuUrl(String? menuUrl) => _$this._menuUrl = menuUrl;

  RestaurantBuilder();

  RestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _url = $v.url;
      _location = $v.location.toBuilder();
      _userRating = $v.userRating.toBuilder();
      _hasOnlineDelivery = $v.hasOnlineDelivery;
      _cuisines = $v.cuisines.toBuilder();
      _timings = $v.timings;
      _currency = $v.currency;
      _featuredPhoto = $v.featuredPhoto;
      _phoneNumbers = $v.phoneNumbers.toBuilder();
      _highlights = $v.highlights.toBuilder();
      _menuUrl = $v.menuUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Restaurant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Restaurant;
  }

  @override
  void update(void Function(RestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Restaurant build() {
    _$Restaurant _$result;
    try {
      _$result = _$v ??
          new _$Restaurant._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Restaurant', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Restaurant', 'name'),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, 'Restaurant', 'url'),
              location: location.build(),
              userRating: userRating.build(),
              hasOnlineDelivery: BuiltValueNullFieldError.checkNotNull(
                  hasOnlineDelivery, 'Restaurant', 'hasOnlineDelivery'),
              cuisines: cuisines.build(),
              timings: BuiltValueNullFieldError.checkNotNull(
                  timings, 'Restaurant', 'timings'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, 'Restaurant', 'currency'),
              featuredPhoto: featuredPhoto,
              phoneNumbers: phoneNumbers.build(),
              highlights: highlights.build(),
              menuUrl: BuiltValueNullFieldError.checkNotNull(
                  menuUrl, 'Restaurant', 'menuUrl'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'userRating';
        userRating.build();

        _$failedField = 'cuisines';
        cuisines.build();

        _$failedField = 'phoneNumbers';
        phoneNumbers.build();
        _$failedField = 'highlights';
        highlights.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Restaurant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RestaurantLocation extends RestaurantLocation {
  @override
  final String address;
  @override
  final String locality;
  @override
  final String city;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String localityVerbose;

  factory _$RestaurantLocation(
          [void Function(RestaurantLocationBuilder)? updates]) =>
      (new RestaurantLocationBuilder()..update(updates)).build();

  _$RestaurantLocation._(
      {required this.address,
      required this.locality,
      required this.city,
      required this.latitude,
      required this.longitude,
      required this.localityVerbose})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, 'RestaurantLocation', 'address');
    BuiltValueNullFieldError.checkNotNull(
        locality, 'RestaurantLocation', 'locality');
    BuiltValueNullFieldError.checkNotNull(city, 'RestaurantLocation', 'city');
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'RestaurantLocation', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, 'RestaurantLocation', 'longitude');
    BuiltValueNullFieldError.checkNotNull(
        localityVerbose, 'RestaurantLocation', 'localityVerbose');
  }

  @override
  RestaurantLocation rebuild(
          void Function(RestaurantLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantLocationBuilder toBuilder() =>
      new RestaurantLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantLocation &&
        address == other.address &&
        locality == other.locality &&
        city == other.city &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        localityVerbose == other.localityVerbose;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, address.hashCode), locality.hashCode),
                    city.hashCode),
                latitude.hashCode),
            longitude.hashCode),
        localityVerbose.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantLocation')
          ..add('address', address)
          ..add('locality', locality)
          ..add('city', city)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('localityVerbose', localityVerbose))
        .toString();
  }
}

class RestaurantLocationBuilder
    implements Builder<RestaurantLocation, RestaurantLocationBuilder> {
  _$RestaurantLocation? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _locality;
  String? get locality => _$this._locality;
  set locality(String? locality) => _$this._locality = locality;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _localityVerbose;
  String? get localityVerbose => _$this._localityVerbose;
  set localityVerbose(String? localityVerbose) =>
      _$this._localityVerbose = localityVerbose;

  RestaurantLocationBuilder();

  RestaurantLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _locality = $v.locality;
      _city = $v.city;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _localityVerbose = $v.localityVerbose;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantLocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantLocation;
  }

  @override
  void update(void Function(RestaurantLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantLocation build() {
    final _$result = _$v ??
        new _$RestaurantLocation._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'RestaurantLocation', 'address'),
            locality: BuiltValueNullFieldError.checkNotNull(
                locality, 'RestaurantLocation', 'locality'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, 'RestaurantLocation', 'city'),
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'RestaurantLocation', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'RestaurantLocation', 'longitude'),
            localityVerbose: BuiltValueNullFieldError.checkNotNull(
                localityVerbose, 'RestaurantLocation', 'localityVerbose'));
    replace(_$result);
    return _$result;
  }
}

class _$RestaurantsState extends RestaurantsState {
  @override
  final BuiltList<Restaurant> searchedRestaurants;
  @override
  final BuiltList<Restaurant> recommendedRestaurants;
  @override
  final String? query;
  @override
  final String? selectedRestaurantId;

  factory _$RestaurantsState(
          [void Function(RestaurantsStateBuilder)? updates]) =>
      (new RestaurantsStateBuilder()..update(updates)).build();

  _$RestaurantsState._(
      {required this.searchedRestaurants,
      required this.recommendedRestaurants,
      this.query,
      this.selectedRestaurantId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        searchedRestaurants, 'RestaurantsState', 'searchedRestaurants');
    BuiltValueNullFieldError.checkNotNull(
        recommendedRestaurants, 'RestaurantsState', 'recommendedRestaurants');
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
        query == other.query &&
        selectedRestaurantId == other.selectedRestaurantId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, searchedRestaurants.hashCode),
                recommendedRestaurants.hashCode),
            query.hashCode),
        selectedRestaurantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantsState')
          ..add('searchedRestaurants', searchedRestaurants)
          ..add('recommendedRestaurants', recommendedRestaurants)
          ..add('query', query)
          ..add('selectedRestaurantId', selectedRestaurantId))
        .toString();
  }
}

class RestaurantsStateBuilder
    implements Builder<RestaurantsState, RestaurantsStateBuilder> {
  _$RestaurantsState? _$v;

  ListBuilder<Restaurant>? _searchedRestaurants;
  ListBuilder<Restaurant> get searchedRestaurants =>
      _$this._searchedRestaurants ??= new ListBuilder<Restaurant>();
  set searchedRestaurants(ListBuilder<Restaurant>? searchedRestaurants) =>
      _$this._searchedRestaurants = searchedRestaurants;

  ListBuilder<Restaurant>? _recommendedRestaurants;
  ListBuilder<Restaurant> get recommendedRestaurants =>
      _$this._recommendedRestaurants ??= new ListBuilder<Restaurant>();
  set recommendedRestaurants(ListBuilder<Restaurant>? recommendedRestaurants) =>
      _$this._recommendedRestaurants = recommendedRestaurants;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  String? _selectedRestaurantId;
  String? get selectedRestaurantId => _$this._selectedRestaurantId;
  set selectedRestaurantId(String? selectedRestaurantId) =>
      _$this._selectedRestaurantId = selectedRestaurantId;

  RestaurantsStateBuilder();

  RestaurantsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchedRestaurants = $v.searchedRestaurants.toBuilder();
      _recommendedRestaurants = $v.recommendedRestaurants.toBuilder();
      _query = $v.query;
      _selectedRestaurantId = $v.selectedRestaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantsState;
  }

  @override
  void update(void Function(RestaurantsStateBuilder)? updates) {
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
              query: query,
              selectedRestaurantId: selectedRestaurantId);
    } catch (_) {
      late String _$failedField;
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

class _$UserRating extends UserRating {
  @override
  final String ratingText;
  @override
  final int ratingColor;
  @override
  final int votes;
  @override
  final double rating;

  factory _$UserRating([void Function(UserRatingBuilder)? updates]) =>
      (new UserRatingBuilder()..update(updates)).build();

  _$UserRating._(
      {required this.ratingText,
      required this.ratingColor,
      required this.votes,
      required this.rating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ratingText, 'UserRating', 'ratingText');
    BuiltValueNullFieldError.checkNotNull(
        ratingColor, 'UserRating', 'ratingColor');
    BuiltValueNullFieldError.checkNotNull(votes, 'UserRating', 'votes');
    BuiltValueNullFieldError.checkNotNull(rating, 'UserRating', 'rating');
  }

  @override
  UserRating rebuild(void Function(UserRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRatingBuilder toBuilder() => new UserRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRating &&
        ratingText == other.ratingText &&
        ratingColor == other.ratingColor &&
        votes == other.votes &&
        rating == other.rating;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, ratingText.hashCode), ratingColor.hashCode),
            votes.hashCode),
        rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRating')
          ..add('ratingText', ratingText)
          ..add('ratingColor', ratingColor)
          ..add('votes', votes)
          ..add('rating', rating))
        .toString();
  }
}

class UserRatingBuilder implements Builder<UserRating, UserRatingBuilder> {
  _$UserRating? _$v;

  String? _ratingText;
  String? get ratingText => _$this._ratingText;
  set ratingText(String? ratingText) => _$this._ratingText = ratingText;

  int? _ratingColor;
  int? get ratingColor => _$this._ratingColor;
  set ratingColor(int? ratingColor) => _$this._ratingColor = ratingColor;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  UserRatingBuilder();

  UserRatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ratingText = $v.ratingText;
      _ratingColor = $v.ratingColor;
      _votes = $v.votes;
      _rating = $v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRating;
  }

  @override
  void update(void Function(UserRatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRating build() {
    final _$result = _$v ??
        new _$UserRating._(
            ratingText: BuiltValueNullFieldError.checkNotNull(
                ratingText, 'UserRating', 'ratingText'),
            ratingColor: BuiltValueNullFieldError.checkNotNull(
                ratingColor, 'UserRating', 'ratingColor'),
            votes: BuiltValueNullFieldError.checkNotNull(
                votes, 'UserRating', 'votes'),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, 'UserRating', 'rating'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
