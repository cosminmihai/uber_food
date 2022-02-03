// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of restaurant_models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteRestaurant _$FavoriteRestaurantFromJson(Map<String, dynamic> json) {
  return _FavoriteRestaurant$.fromJson(json);
}

/// @nodoc
class _$FavoriteRestaurantTearOff {
  const _$FavoriteRestaurantTearOff();

  _FavoriteRestaurant$ call(
      {required String id, required Restaurant data, required String userId}) {
    return _FavoriteRestaurant$(
      id: id,
      data: data,
      userId: userId,
    );
  }

  FavoriteRestaurant fromJson(Map<String, Object?> json) {
    return FavoriteRestaurant.fromJson(json);
  }
}

/// @nodoc
const $FavoriteRestaurant = _$FavoriteRestaurantTearOff();

/// @nodoc
mixin _$FavoriteRestaurant {
  String get id => throw _privateConstructorUsedError;
  Restaurant get data => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteRestaurantCopyWith<FavoriteRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteRestaurantCopyWith<$Res> {
  factory $FavoriteRestaurantCopyWith(
          FavoriteRestaurant value, $Res Function(FavoriteRestaurant) then) =
      _$FavoriteRestaurantCopyWithImpl<$Res>;
  $Res call({String id, Restaurant data, String userId});

  $RestaurantCopyWith<$Res> get data;
}

/// @nodoc
class _$FavoriteRestaurantCopyWithImpl<$Res>
    implements $FavoriteRestaurantCopyWith<$Res> {
  _$FavoriteRestaurantCopyWithImpl(this._value, this._then);

  final FavoriteRestaurant _value;
  // ignore: unused_field
  final $Res Function(FavoriteRestaurant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $RestaurantCopyWith<$Res> get data {
    return $RestaurantCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FavoriteRestaurant$CopyWith<$Res>
    implements $FavoriteRestaurantCopyWith<$Res> {
  factory _$FavoriteRestaurant$CopyWith(_FavoriteRestaurant$ value,
          $Res Function(_FavoriteRestaurant$) then) =
      __$FavoriteRestaurant$CopyWithImpl<$Res>;
  @override
  $Res call({String id, Restaurant data, String userId});

  @override
  $RestaurantCopyWith<$Res> get data;
}

/// @nodoc
class __$FavoriteRestaurant$CopyWithImpl<$Res>
    extends _$FavoriteRestaurantCopyWithImpl<$Res>
    implements _$FavoriteRestaurant$CopyWith<$Res> {
  __$FavoriteRestaurant$CopyWithImpl(
      _FavoriteRestaurant$ _value, $Res Function(_FavoriteRestaurant$) _then)
      : super(_value, (v) => _then(v as _FavoriteRestaurant$));

  @override
  _FavoriteRestaurant$ get _value => super._value as _FavoriteRestaurant$;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? userId = freezed,
  }) {
    return _then(_FavoriteRestaurant$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteRestaurant$ implements _FavoriteRestaurant$ {
  const _$_FavoriteRestaurant$(
      {required this.id, required this.data, required this.userId});

  factory _$_FavoriteRestaurant$.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteRestaurant$FromJson(json);

  @override
  final String id;
  @override
  final Restaurant data;
  @override
  final String userId;

  @override
  String toString() {
    return 'FavoriteRestaurant(id: $id, data: $data, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteRestaurant$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$FavoriteRestaurant$CopyWith<_FavoriteRestaurant$> get copyWith =>
      __$FavoriteRestaurant$CopyWithImpl<_FavoriteRestaurant$>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteRestaurant$ToJson(this);
  }
}

abstract class _FavoriteRestaurant$ implements FavoriteRestaurant {
  const factory _FavoriteRestaurant$(
      {required String id,
      required Restaurant data,
      required String userId}) = _$_FavoriteRestaurant$;

  factory _FavoriteRestaurant$.fromJson(Map<String, dynamic> json) =
      _$_FavoriteRestaurant$.fromJson;

  @override
  String get id;
  @override
  Restaurant get data;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$FavoriteRestaurant$CopyWith<_FavoriteRestaurant$> get copyWith =>
      throw _privateConstructorUsedError;
}

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant$.fromJson(json);
}

/// @nodoc
class _$RestaurantTearOff {
  const _$RestaurantTearOff();

  _Restaurant$ call(
      {required String id,
      required String name,
      required String url,
      required RestaurantLocation location,
      @JsonKey(name: 'user_rating') required UsersRating usersRating,
      @JsonKey(name: 'has_online_delivery') required bool hasOnlineDelivery,
      required List<String> cuisines,
      required String timings,
      required String currency,
      @JsonKey(name: 'featured_image') String? featuredPhoto,
      required List<String> phoneNumbers,
      required List<String> highlights,
      @JsonKey(name: 'menu_url') required String menuUrl}) {
    return _Restaurant$(
      id: id,
      name: name,
      url: url,
      location: location,
      usersRating: usersRating,
      hasOnlineDelivery: hasOnlineDelivery,
      cuisines: cuisines,
      timings: timings,
      currency: currency,
      featuredPhoto: featuredPhoto,
      phoneNumbers: phoneNumbers,
      highlights: highlights,
      menuUrl: menuUrl,
    );
  }

  Restaurant fromJson(Map<String, Object?> json) {
    return Restaurant.fromJson(json);
  }
}

/// @nodoc
const $Restaurant = _$RestaurantTearOff();

/// @nodoc
mixin _$Restaurant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  RestaurantLocation get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_rating')
  UsersRating get usersRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_online_delivery')
  bool get hasOnlineDelivery => throw _privateConstructorUsedError;
  List<String> get cuisines => throw _privateConstructorUsedError;
  String get timings => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_image')
  String? get featuredPhoto => throw _privateConstructorUsedError;
  List<String> get phoneNumbers => throw _privateConstructorUsedError;
  List<String> get highlights => throw _privateConstructorUsedError;
  @JsonKey(name: 'menu_url')
  String get menuUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String url,
      RestaurantLocation location,
      @JsonKey(name: 'user_rating') UsersRating usersRating,
      @JsonKey(name: 'has_online_delivery') bool hasOnlineDelivery,
      List<String> cuisines,
      String timings,
      String currency,
      @JsonKey(name: 'featured_image') String? featuredPhoto,
      List<String> phoneNumbers,
      List<String> highlights,
      @JsonKey(name: 'menu_url') String menuUrl});

  $RestaurantLocationCopyWith<$Res> get location;
  $UsersRatingCopyWith<$Res> get usersRating;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res> implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  final Restaurant _value;
  // ignore: unused_field
  final $Res Function(Restaurant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? location = freezed,
    Object? usersRating = freezed,
    Object? hasOnlineDelivery = freezed,
    Object? cuisines = freezed,
    Object? timings = freezed,
    Object? currency = freezed,
    Object? featuredPhoto = freezed,
    Object? phoneNumbers = freezed,
    Object? highlights = freezed,
    Object? menuUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RestaurantLocation,
      usersRating: usersRating == freezed
          ? _value.usersRating
          : usersRating // ignore: cast_nullable_to_non_nullable
              as UsersRating,
      hasOnlineDelivery: hasOnlineDelivery == freezed
          ? _value.hasOnlineDelivery
          : hasOnlineDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timings: timings == freezed
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      featuredPhoto: featuredPhoto == freezed
          ? _value.featuredPhoto
          : featuredPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: phoneNumbers == freezed
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: highlights == freezed
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menuUrl: menuUrl == freezed
          ? _value.menuUrl
          : menuUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $RestaurantLocationCopyWith<$Res> get location {
    return $RestaurantLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }

  @override
  $UsersRatingCopyWith<$Res> get usersRating {
    return $UsersRatingCopyWith<$Res>(_value.usersRating, (value) {
      return _then(_value.copyWith(usersRating: value));
    });
  }
}

/// @nodoc
abstract class _$Restaurant$CopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$Restaurant$CopyWith(
          _Restaurant$ value, $Res Function(_Restaurant$) then) =
      __$Restaurant$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String url,
      RestaurantLocation location,
      @JsonKey(name: 'user_rating') UsersRating usersRating,
      @JsonKey(name: 'has_online_delivery') bool hasOnlineDelivery,
      List<String> cuisines,
      String timings,
      String currency,
      @JsonKey(name: 'featured_image') String? featuredPhoto,
      List<String> phoneNumbers,
      List<String> highlights,
      @JsonKey(name: 'menu_url') String menuUrl});

  @override
  $RestaurantLocationCopyWith<$Res> get location;
  @override
  $UsersRatingCopyWith<$Res> get usersRating;
}

/// @nodoc
class __$Restaurant$CopyWithImpl<$Res> extends _$RestaurantCopyWithImpl<$Res>
    implements _$Restaurant$CopyWith<$Res> {
  __$Restaurant$CopyWithImpl(
      _Restaurant$ _value, $Res Function(_Restaurant$) _then)
      : super(_value, (v) => _then(v as _Restaurant$));

  @override
  _Restaurant$ get _value => super._value as _Restaurant$;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? location = freezed,
    Object? usersRating = freezed,
    Object? hasOnlineDelivery = freezed,
    Object? cuisines = freezed,
    Object? timings = freezed,
    Object? currency = freezed,
    Object? featuredPhoto = freezed,
    Object? phoneNumbers = freezed,
    Object? highlights = freezed,
    Object? menuUrl = freezed,
  }) {
    return _then(_Restaurant$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RestaurantLocation,
      usersRating: usersRating == freezed
          ? _value.usersRating
          : usersRating // ignore: cast_nullable_to_non_nullable
              as UsersRating,
      hasOnlineDelivery: hasOnlineDelivery == freezed
          ? _value.hasOnlineDelivery
          : hasOnlineDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      cuisines: cuisines == freezed
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timings: timings == freezed
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      featuredPhoto: featuredPhoto == freezed
          ? _value.featuredPhoto
          : featuredPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: phoneNumbers == freezed
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highlights: highlights == freezed
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menuUrl: menuUrl == freezed
          ? _value.menuUrl
          : menuUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Restaurant$ implements _Restaurant$ {
  const _$_Restaurant$(
      {required this.id,
      required this.name,
      required this.url,
      required this.location,
      @JsonKey(name: 'user_rating') required this.usersRating,
      @JsonKey(name: 'has_online_delivery') required this.hasOnlineDelivery,
      required this.cuisines,
      required this.timings,
      required this.currency,
      @JsonKey(name: 'featured_image') this.featuredPhoto,
      required this.phoneNumbers,
      required this.highlights,
      @JsonKey(name: 'menu_url') required this.menuUrl});

  factory _$_Restaurant$.fromJson(Map<String, dynamic> json) =>
      _$$_Restaurant$FromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final RestaurantLocation location;
  @override
  @JsonKey(name: 'user_rating')
  final UsersRating usersRating;
  @override
  @JsonKey(name: 'has_online_delivery')
  final bool hasOnlineDelivery;
  @override
  final List<String> cuisines;
  @override
  final String timings;
  @override
  final String currency;
  @override
  @JsonKey(name: 'featured_image')
  final String? featuredPhoto;
  @override
  final List<String> phoneNumbers;
  @override
  final List<String> highlights;
  @override
  @JsonKey(name: 'menu_url')
  final String menuUrl;

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, url: $url, location: $location, usersRating: $usersRating, hasOnlineDelivery: $hasOnlineDelivery, cuisines: $cuisines, timings: $timings, currency: $currency, featuredPhoto: $featuredPhoto, phoneNumbers: $phoneNumbers, highlights: $highlights, menuUrl: $menuUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Restaurant$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.usersRating, usersRating) &&
            const DeepCollectionEquality()
                .equals(other.hasOnlineDelivery, hasOnlineDelivery) &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            const DeepCollectionEquality().equals(other.timings, timings) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.featuredPhoto, featuredPhoto) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumbers, phoneNumbers) &&
            const DeepCollectionEquality()
                .equals(other.highlights, highlights) &&
            const DeepCollectionEquality().equals(other.menuUrl, menuUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(usersRating),
      const DeepCollectionEquality().hash(hasOnlineDelivery),
      const DeepCollectionEquality().hash(cuisines),
      const DeepCollectionEquality().hash(timings),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(featuredPhoto),
      const DeepCollectionEquality().hash(phoneNumbers),
      const DeepCollectionEquality().hash(highlights),
      const DeepCollectionEquality().hash(menuUrl));

  @JsonKey(ignore: true)
  @override
  _$Restaurant$CopyWith<_Restaurant$> get copyWith =>
      __$Restaurant$CopyWithImpl<_Restaurant$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Restaurant$ToJson(this);
  }
}

abstract class _Restaurant$ implements Restaurant {
  const factory _Restaurant$(
      {required String id,
      required String name,
      required String url,
      required RestaurantLocation location,
      @JsonKey(name: 'user_rating') required UsersRating usersRating,
      @JsonKey(name: 'has_online_delivery') required bool hasOnlineDelivery,
      required List<String> cuisines,
      required String timings,
      required String currency,
      @JsonKey(name: 'featured_image') String? featuredPhoto,
      required List<String> phoneNumbers,
      required List<String> highlights,
      @JsonKey(name: 'menu_url') required String menuUrl}) = _$_Restaurant$;

  factory _Restaurant$.fromJson(Map<String, dynamic> json) =
      _$_Restaurant$.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  RestaurantLocation get location;
  @override
  @JsonKey(name: 'user_rating')
  UsersRating get usersRating;
  @override
  @JsonKey(name: 'has_online_delivery')
  bool get hasOnlineDelivery;
  @override
  List<String> get cuisines;
  @override
  String get timings;
  @override
  String get currency;
  @override
  @JsonKey(name: 'featured_image')
  String? get featuredPhoto;
  @override
  List<String> get phoneNumbers;
  @override
  List<String> get highlights;
  @override
  @JsonKey(name: 'menu_url')
  String get menuUrl;
  @override
  @JsonKey(ignore: true)
  _$Restaurant$CopyWith<_Restaurant$> get copyWith =>
      throw _privateConstructorUsedError;
}

RestaurantLocation _$RestaurantLocationFromJson(Map<String, dynamic> json) {
  return _RestaurantLocation$.fromJson(json);
}

/// @nodoc
class _$RestaurantLocationTearOff {
  const _$RestaurantLocationTearOff();

  _RestaurantLocation$ call(
      {required String address,
      required String locality,
      required String city,
      required double latitude,
      required double longitude,
      @JsonKey(name: 'locality_verbose') required String localityVerbose}) {
    return _RestaurantLocation$(
      address: address,
      locality: locality,
      city: city,
      latitude: latitude,
      longitude: longitude,
      localityVerbose: localityVerbose,
    );
  }

  RestaurantLocation fromJson(Map<String, Object?> json) {
    return RestaurantLocation.fromJson(json);
  }
}

/// @nodoc
const $RestaurantLocation = _$RestaurantLocationTearOff();

/// @nodoc
mixin _$RestaurantLocation {
  String get address => throw _privateConstructorUsedError;
  String get locality => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'locality_verbose')
  String get localityVerbose => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantLocationCopyWith<RestaurantLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantLocationCopyWith<$Res> {
  factory $RestaurantLocationCopyWith(
          RestaurantLocation value, $Res Function(RestaurantLocation) then) =
      _$RestaurantLocationCopyWithImpl<$Res>;
  $Res call(
      {String address,
      String locality,
      String city,
      double latitude,
      double longitude,
      @JsonKey(name: 'locality_verbose') String localityVerbose});
}

/// @nodoc
class _$RestaurantLocationCopyWithImpl<$Res>
    implements $RestaurantLocationCopyWith<$Res> {
  _$RestaurantLocationCopyWithImpl(this._value, this._then);

  final RestaurantLocation _value;
  // ignore: unused_field
  final $Res Function(RestaurantLocation) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? locality = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? localityVerbose = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      localityVerbose: localityVerbose == freezed
          ? _value.localityVerbose
          : localityVerbose // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantLocation$CopyWith<$Res>
    implements $RestaurantLocationCopyWith<$Res> {
  factory _$RestaurantLocation$CopyWith(_RestaurantLocation$ value,
          $Res Function(_RestaurantLocation$) then) =
      __$RestaurantLocation$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      String locality,
      String city,
      double latitude,
      double longitude,
      @JsonKey(name: 'locality_verbose') String localityVerbose});
}

/// @nodoc
class __$RestaurantLocation$CopyWithImpl<$Res>
    extends _$RestaurantLocationCopyWithImpl<$Res>
    implements _$RestaurantLocation$CopyWith<$Res> {
  __$RestaurantLocation$CopyWithImpl(
      _RestaurantLocation$ _value, $Res Function(_RestaurantLocation$) _then)
      : super(_value, (v) => _then(v as _RestaurantLocation$));

  @override
  _RestaurantLocation$ get _value => super._value as _RestaurantLocation$;

  @override
  $Res call({
    Object? address = freezed,
    Object? locality = freezed,
    Object? city = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? localityVerbose = freezed,
  }) {
    return _then(_RestaurantLocation$(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      localityVerbose: localityVerbose == freezed
          ? _value.localityVerbose
          : localityVerbose // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantLocation$ implements _RestaurantLocation$ {
  const _$_RestaurantLocation$(
      {required this.address,
      required this.locality,
      required this.city,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: 'locality_verbose') required this.localityVerbose});

  factory _$_RestaurantLocation$.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantLocation$FromJson(json);

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
  @JsonKey(name: 'locality_verbose')
  final String localityVerbose;

  @override
  String toString() {
    return 'RestaurantLocation(address: $address, locality: $locality, city: $city, latitude: $latitude, longitude: $longitude, localityVerbose: $localityVerbose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantLocation$ &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.locality, locality) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.localityVerbose, localityVerbose));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(locality),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(localityVerbose));

  @JsonKey(ignore: true)
  @override
  _$RestaurantLocation$CopyWith<_RestaurantLocation$> get copyWith =>
      __$RestaurantLocation$CopyWithImpl<_RestaurantLocation$>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantLocation$ToJson(this);
  }
}

abstract class _RestaurantLocation$ implements RestaurantLocation {
  const factory _RestaurantLocation$(
          {required String address,
          required String locality,
          required String city,
          required double latitude,
          required double longitude,
          @JsonKey(name: 'locality_verbose') required String localityVerbose}) =
      _$_RestaurantLocation$;

  factory _RestaurantLocation$.fromJson(Map<String, dynamic> json) =
      _$_RestaurantLocation$.fromJson;

  @override
  String get address;
  @override
  String get locality;
  @override
  String get city;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(name: 'locality_verbose')
  String get localityVerbose;
  @override
  @JsonKey(ignore: true)
  _$RestaurantLocation$CopyWith<_RestaurantLocation$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RestaurantsStateTearOff {
  const _$RestaurantsStateTearOff();

  _RestaurantsState$ call(
      {Set<String> searchedRestaurants = const <String>{},
      Map<String, Restaurant> restaurants = const <String, Restaurant>{},
      Map<String, Review> reviews = const <String, Review>{},
      Set<String> nearByRestaurants = const <String>{},
      List<FavoriteRestaurant> favorite = const <FavoriteRestaurant>[],
      String? query,
      String? selectedRestaurantId}) {
    return _RestaurantsState$(
      searchedRestaurants: searchedRestaurants,
      restaurants: restaurants,
      reviews: reviews,
      nearByRestaurants: nearByRestaurants,
      favorite: favorite,
      query: query,
      selectedRestaurantId: selectedRestaurantId,
    );
  }
}

/// @nodoc
const $RestaurantsState = _$RestaurantsStateTearOff();

/// @nodoc
mixin _$RestaurantsState {
  Set<String> get searchedRestaurants => throw _privateConstructorUsedError;
  Map<String, Restaurant> get restaurants => throw _privateConstructorUsedError;
  Map<String, Review> get reviews => throw _privateConstructorUsedError;
  Set<String> get nearByRestaurants => throw _privateConstructorUsedError;
  List<FavoriteRestaurant> get favorite => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  String? get selectedRestaurantId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantsStateCopyWith<RestaurantsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsStateCopyWith<$Res> {
  factory $RestaurantsStateCopyWith(
          RestaurantsState value, $Res Function(RestaurantsState) then) =
      _$RestaurantsStateCopyWithImpl<$Res>;
  $Res call(
      {Set<String> searchedRestaurants,
      Map<String, Restaurant> restaurants,
      Map<String, Review> reviews,
      Set<String> nearByRestaurants,
      List<FavoriteRestaurant> favorite,
      String? query,
      String? selectedRestaurantId});
}

/// @nodoc
class _$RestaurantsStateCopyWithImpl<$Res>
    implements $RestaurantsStateCopyWith<$Res> {
  _$RestaurantsStateCopyWithImpl(this._value, this._then);

  final RestaurantsState _value;
  // ignore: unused_field
  final $Res Function(RestaurantsState) _then;

  @override
  $Res call({
    Object? searchedRestaurants = freezed,
    Object? restaurants = freezed,
    Object? reviews = freezed,
    Object? nearByRestaurants = freezed,
    Object? favorite = freezed,
    Object? query = freezed,
    Object? selectedRestaurantId = freezed,
  }) {
    return _then(_value.copyWith(
      searchedRestaurants: searchedRestaurants == freezed
          ? _value.searchedRestaurants
          : searchedRestaurants // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      restaurants: restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as Map<String, Restaurant>,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Map<String, Review>,
      nearByRestaurants: nearByRestaurants == freezed
          ? _value.nearByRestaurants
          : nearByRestaurants // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRestaurant>,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedRestaurantId: selectedRestaurantId == freezed
          ? _value.selectedRestaurantId
          : selectedRestaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantsState$CopyWith<$Res>
    implements $RestaurantsStateCopyWith<$Res> {
  factory _$RestaurantsState$CopyWith(
          _RestaurantsState$ value, $Res Function(_RestaurantsState$) then) =
      __$RestaurantsState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<String> searchedRestaurants,
      Map<String, Restaurant> restaurants,
      Map<String, Review> reviews,
      Set<String> nearByRestaurants,
      List<FavoriteRestaurant> favorite,
      String? query,
      String? selectedRestaurantId});
}

/// @nodoc
class __$RestaurantsState$CopyWithImpl<$Res>
    extends _$RestaurantsStateCopyWithImpl<$Res>
    implements _$RestaurantsState$CopyWith<$Res> {
  __$RestaurantsState$CopyWithImpl(
      _RestaurantsState$ _value, $Res Function(_RestaurantsState$) _then)
      : super(_value, (v) => _then(v as _RestaurantsState$));

  @override
  _RestaurantsState$ get _value => super._value as _RestaurantsState$;

  @override
  $Res call({
    Object? searchedRestaurants = freezed,
    Object? restaurants = freezed,
    Object? reviews = freezed,
    Object? nearByRestaurants = freezed,
    Object? favorite = freezed,
    Object? query = freezed,
    Object? selectedRestaurantId = freezed,
  }) {
    return _then(_RestaurantsState$(
      searchedRestaurants: searchedRestaurants == freezed
          ? _value.searchedRestaurants
          : searchedRestaurants // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      restaurants: restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as Map<String, Restaurant>,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as Map<String, Review>,
      nearByRestaurants: nearByRestaurants == freezed
          ? _value.nearByRestaurants
          : nearByRestaurants // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRestaurant>,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedRestaurantId: selectedRestaurantId == freezed
          ? _value.selectedRestaurantId
          : selectedRestaurantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RestaurantsState$ implements _RestaurantsState$ {
  const _$_RestaurantsState$(
      {this.searchedRestaurants = const <String>{},
      this.restaurants = const <String, Restaurant>{},
      this.reviews = const <String, Review>{},
      this.nearByRestaurants = const <String>{},
      this.favorite = const <FavoriteRestaurant>[],
      this.query,
      this.selectedRestaurantId});

  @JsonKey()
  @override
  final Set<String> searchedRestaurants;
  @JsonKey()
  @override
  final Map<String, Restaurant> restaurants;
  @JsonKey()
  @override
  final Map<String, Review> reviews;
  @JsonKey()
  @override
  final Set<String> nearByRestaurants;
  @JsonKey()
  @override
  final List<FavoriteRestaurant> favorite;
  @override
  final String? query;
  @override
  final String? selectedRestaurantId;

  @override
  String toString() {
    return 'RestaurantsState(searchedRestaurants: $searchedRestaurants, restaurants: $restaurants, reviews: $reviews, nearByRestaurants: $nearByRestaurants, favorite: $favorite, query: $query, selectedRestaurantId: $selectedRestaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestaurantsState$ &&
            const DeepCollectionEquality()
                .equals(other.searchedRestaurants, searchedRestaurants) &&
            const DeepCollectionEquality()
                .equals(other.restaurants, restaurants) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            const DeepCollectionEquality()
                .equals(other.nearByRestaurants, nearByRestaurants) &&
            const DeepCollectionEquality().equals(other.favorite, favorite) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.selectedRestaurantId, selectedRestaurantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchedRestaurants),
      const DeepCollectionEquality().hash(restaurants),
      const DeepCollectionEquality().hash(reviews),
      const DeepCollectionEquality().hash(nearByRestaurants),
      const DeepCollectionEquality().hash(favorite),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(selectedRestaurantId));

  @JsonKey(ignore: true)
  @override
  _$RestaurantsState$CopyWith<_RestaurantsState$> get copyWith =>
      __$RestaurantsState$CopyWithImpl<_RestaurantsState$>(this, _$identity);
}

abstract class _RestaurantsState$ implements RestaurantsState {
  const factory _RestaurantsState$(
      {Set<String> searchedRestaurants,
      Map<String, Restaurant> restaurants,
      Map<String, Review> reviews,
      Set<String> nearByRestaurants,
      List<FavoriteRestaurant> favorite,
      String? query,
      String? selectedRestaurantId}) = _$_RestaurantsState$;

  @override
  Set<String> get searchedRestaurants;
  @override
  Map<String, Restaurant> get restaurants;
  @override
  Map<String, Review> get reviews;
  @override
  Set<String> get nearByRestaurants;
  @override
  List<FavoriteRestaurant> get favorite;
  @override
  String? get query;
  @override
  String? get selectedRestaurantId;
  @override
  @JsonKey(ignore: true)
  _$RestaurantsState$CopyWith<_RestaurantsState$> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review$.fromJson(json);
}

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review$ call(
      {required String id,
      required String uid,
      required String restaurantId,
      required String textReview,
      required DateTime createdAt,
      required int rating}) {
    return _Review$(
      id: id,
      uid: uid,
      restaurantId: restaurantId,
      textReview: textReview,
      createdAt: createdAt,
      rating: rating,
    );
  }

  Review fromJson(Map<String, Object?> json) {
    return Review.fromJson(json);
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get restaurantId => throw _privateConstructorUsedError;
  String get textReview => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String uid,
      String restaurantId,
      String textReview,
      DateTime createdAt,
      int rating});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? restaurantId = freezed,
    Object? textReview = freezed,
    Object? createdAt = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      textReview: textReview == freezed
          ? _value.textReview
          : textReview // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$Review$CopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$Review$CopyWith(_Review$ value, $Res Function(_Review$) then) =
      __$Review$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String uid,
      String restaurantId,
      String textReview,
      DateTime createdAt,
      int rating});
}

/// @nodoc
class __$Review$CopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$Review$CopyWith<$Res> {
  __$Review$CopyWithImpl(_Review$ _value, $Res Function(_Review$) _then)
      : super(_value, (v) => _then(v as _Review$));

  @override
  _Review$ get _value => super._value as _Review$;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? restaurantId = freezed,
    Object? textReview = freezed,
    Object? createdAt = freezed,
    Object? rating = freezed,
  }) {
    return _then(_Review$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      textReview: textReview == freezed
          ? _value.textReview
          : textReview // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review$ extends _Review$ {
  const _$_Review$(
      {required this.id,
      required this.uid,
      required this.restaurantId,
      required this.textReview,
      required this.createdAt,
      required this.rating})
      : super._();

  factory _$_Review$.fromJson(Map<String, dynamic> json) =>
      _$$_Review$FromJson(json);

  @override
  final String id;
  @override
  final String uid;
  @override
  final String restaurantId;
  @override
  final String textReview;
  @override
  final DateTime createdAt;
  @override
  final int rating;

  @override
  String toString() {
    return 'Review(id: $id, uid: $uid, restaurantId: $restaurantId, textReview: $textReview, createdAt: $createdAt, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Review$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId) &&
            const DeepCollectionEquality()
                .equals(other.textReview, textReview) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(restaurantId),
      const DeepCollectionEquality().hash(textReview),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$Review$CopyWith<_Review$> get copyWith =>
      __$Review$CopyWithImpl<_Review$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Review$ToJson(this);
  }
}

abstract class _Review$ extends Review {
  const factory _Review$(
      {required String id,
      required String uid,
      required String restaurantId,
      required String textReview,
      required DateTime createdAt,
      required int rating}) = _$_Review$;
  const _Review$._() : super._();

  factory _Review$.fromJson(Map<String, dynamic> json) = _$_Review$.fromJson;

  @override
  String get id;
  @override
  String get uid;
  @override
  String get restaurantId;
  @override
  String get textReview;
  @override
  DateTime get createdAt;
  @override
  int get rating;
  @override
  @JsonKey(ignore: true)
  _$Review$CopyWith<_Review$> get copyWith =>
      throw _privateConstructorUsedError;
}

UsersRating _$UsersRatingFromJson(Map<String, dynamic> json) {
  return _UsersRating$.fromJson(json);
}

/// @nodoc
class _$UsersRatingTearOff {
  const _$UsersRatingTearOff();

  _UsersRating$ call(
      {required int votes,
      @JsonKey(name: 'rating_text') required String ratingText,
      @JsonKey(name: 'rating_color') required int ratingColor,
      @JsonKey(name: 'aggregate_rating') required double rating}) {
    return _UsersRating$(
      votes: votes,
      ratingText: ratingText,
      ratingColor: ratingColor,
      rating: rating,
    );
  }

  UsersRating fromJson(Map<String, Object?> json) {
    return UsersRating.fromJson(json);
  }
}

/// @nodoc
const $UsersRating = _$UsersRatingTearOff();

/// @nodoc
mixin _$UsersRating {
  int get votes => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_text')
  String get ratingText => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_color')
  int get ratingColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'aggregate_rating')
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersRatingCopyWith<UsersRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersRatingCopyWith<$Res> {
  factory $UsersRatingCopyWith(
          UsersRating value, $Res Function(UsersRating) then) =
      _$UsersRatingCopyWithImpl<$Res>;
  $Res call(
      {int votes,
      @JsonKey(name: 'rating_text') String ratingText,
      @JsonKey(name: 'rating_color') int ratingColor,
      @JsonKey(name: 'aggregate_rating') double rating});
}

/// @nodoc
class _$UsersRatingCopyWithImpl<$Res> implements $UsersRatingCopyWith<$Res> {
  _$UsersRatingCopyWithImpl(this._value, this._then);

  final UsersRating _value;
  // ignore: unused_field
  final $Res Function(UsersRating) _then;

  @override
  $Res call({
    Object? votes = freezed,
    Object? ratingText = freezed,
    Object? ratingColor = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      ratingText: ratingText == freezed
          ? _value.ratingText
          : ratingText // ignore: cast_nullable_to_non_nullable
              as String,
      ratingColor: ratingColor == freezed
          ? _value.ratingColor
          : ratingColor // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$UsersRating$CopyWith<$Res>
    implements $UsersRatingCopyWith<$Res> {
  factory _$UsersRating$CopyWith(
          _UsersRating$ value, $Res Function(_UsersRating$) then) =
      __$UsersRating$CopyWithImpl<$Res>;
  @override
  $Res call(
      {int votes,
      @JsonKey(name: 'rating_text') String ratingText,
      @JsonKey(name: 'rating_color') int ratingColor,
      @JsonKey(name: 'aggregate_rating') double rating});
}

/// @nodoc
class __$UsersRating$CopyWithImpl<$Res> extends _$UsersRatingCopyWithImpl<$Res>
    implements _$UsersRating$CopyWith<$Res> {
  __$UsersRating$CopyWithImpl(
      _UsersRating$ _value, $Res Function(_UsersRating$) _then)
      : super(_value, (v) => _then(v as _UsersRating$));

  @override
  _UsersRating$ get _value => super._value as _UsersRating$;

  @override
  $Res call({
    Object? votes = freezed,
    Object? ratingText = freezed,
    Object? ratingColor = freezed,
    Object? rating = freezed,
  }) {
    return _then(_UsersRating$(
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      ratingText: ratingText == freezed
          ? _value.ratingText
          : ratingText // ignore: cast_nullable_to_non_nullable
              as String,
      ratingColor: ratingColor == freezed
          ? _value.ratingColor
          : ratingColor // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersRating$ implements _UsersRating$ {
  const _$_UsersRating$(
      {required this.votes,
      @JsonKey(name: 'rating_text') required this.ratingText,
      @JsonKey(name: 'rating_color') required this.ratingColor,
      @JsonKey(name: 'aggregate_rating') required this.rating});

  factory _$_UsersRating$.fromJson(Map<String, dynamic> json) =>
      _$$_UsersRating$FromJson(json);

  @override
  final int votes;
  @override
  @JsonKey(name: 'rating_text')
  final String ratingText;
  @override
  @JsonKey(name: 'rating_color')
  final int ratingColor;
  @override
  @JsonKey(name: 'aggregate_rating')
  final double rating;

  @override
  String toString() {
    return 'UsersRating(votes: $votes, ratingText: $ratingText, ratingColor: $ratingColor, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersRating$ &&
            const DeepCollectionEquality().equals(other.votes, votes) &&
            const DeepCollectionEquality()
                .equals(other.ratingText, ratingText) &&
            const DeepCollectionEquality()
                .equals(other.ratingColor, ratingColor) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(votes),
      const DeepCollectionEquality().hash(ratingText),
      const DeepCollectionEquality().hash(ratingColor),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$UsersRating$CopyWith<_UsersRating$> get copyWith =>
      __$UsersRating$CopyWithImpl<_UsersRating$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersRating$ToJson(this);
  }
}

abstract class _UsersRating$ implements UsersRating {
  const factory _UsersRating$(
          {required int votes,
          @JsonKey(name: 'rating_text') required String ratingText,
          @JsonKey(name: 'rating_color') required int ratingColor,
          @JsonKey(name: 'aggregate_rating') required double rating}) =
      _$_UsersRating$;

  factory _UsersRating$.fromJson(Map<String, dynamic> json) =
      _$_UsersRating$.fromJson;

  @override
  int get votes;
  @override
  @JsonKey(name: 'rating_text')
  String get ratingText;
  @override
  @JsonKey(name: 'rating_color')
  int get ratingColor;
  @override
  @JsonKey(name: 'aggregate_rating')
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$UsersRating$CopyWith<_UsersRating$> get copyWith =>
      throw _privateConstructorUsedError;
}
