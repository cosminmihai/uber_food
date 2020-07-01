// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurant;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Restaurant> _$restaurantSerializer = new _$RestaurantSerializer();

class _$RestaurantSerializer implements StructuredSerializer<Restaurant> {
  @override
  final Iterable<Type> types = const [Restaurant, _$Restaurant];
  @override
  final String wireName = 'Restaurant';

  @override
  Iterable<Object> serialize(Serializers serializers, Restaurant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      'featured_image',
      serializers.serialize(object.featuredPhoto,
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

    return result;
  }

  @override
  Restaurant deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
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
                  specifiedType: const FullType(RestaurantLocation))
              as RestaurantLocation);
          break;
        case 'user_rating':
          result.userRating.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserRating)) as UserRating);
          break;
        case 'has_online_delivery':
          result.hasOnlineDelivery = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cuisines':
          result.cuisines.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumbers':
          result.phoneNumbers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'highlights':
          result.highlights.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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
  final String featuredPhoto;
  @override
  final BuiltList<String> phoneNumbers;
  @override
  final BuiltList<String> highlights;
  @override
  final String menuUrl;

  factory _$Restaurant([void Function(RestaurantBuilder) updates]) =>
      (new RestaurantBuilder()..update(updates)).build();

  _$Restaurant._(
      {this.id,
      this.name,
      this.url,
      this.location,
      this.userRating,
      this.hasOnlineDelivery,
      this.cuisines,
      this.timings,
      this.currency,
      this.featuredPhoto,
      this.phoneNumbers,
      this.highlights,
      this.menuUrl})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'name');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'url');
    }
    if (location == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'location');
    }
    if (userRating == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'userRating');
    }
    if (hasOnlineDelivery == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'hasOnlineDelivery');
    }
    if (cuisines == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'cuisines');
    }
    if (timings == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'timings');
    }
    if (currency == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'currency');
    }
    if (featuredPhoto == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'featuredPhoto');
    }
    if (phoneNumbers == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'phoneNumbers');
    }
    if (highlights == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'highlights');
    }
    if (menuUrl == null) {
      throw new BuiltValueNullFieldError('Restaurant', 'menuUrl');
    }
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
  _$Restaurant _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  RestaurantLocationBuilder _location;
  RestaurantLocationBuilder get location =>
      _$this._location ??= new RestaurantLocationBuilder();
  set location(RestaurantLocationBuilder location) =>
      _$this._location = location;

  UserRatingBuilder _userRating;
  UserRatingBuilder get userRating =>
      _$this._userRating ??= new UserRatingBuilder();
  set userRating(UserRatingBuilder userRating) =>
      _$this._userRating = userRating;

  bool _hasOnlineDelivery;
  bool get hasOnlineDelivery => _$this._hasOnlineDelivery;
  set hasOnlineDelivery(bool hasOnlineDelivery) =>
      _$this._hasOnlineDelivery = hasOnlineDelivery;

  ListBuilder<String> _cuisines;
  ListBuilder<String> get cuisines =>
      _$this._cuisines ??= new ListBuilder<String>();
  set cuisines(ListBuilder<String> cuisines) => _$this._cuisines = cuisines;

  String _timings;
  String get timings => _$this._timings;
  set timings(String timings) => _$this._timings = timings;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  String _featuredPhoto;
  String get featuredPhoto => _$this._featuredPhoto;
  set featuredPhoto(String featuredPhoto) =>
      _$this._featuredPhoto = featuredPhoto;

  ListBuilder<String> _phoneNumbers;
  ListBuilder<String> get phoneNumbers =>
      _$this._phoneNumbers ??= new ListBuilder<String>();
  set phoneNumbers(ListBuilder<String> phoneNumbers) =>
      _$this._phoneNumbers = phoneNumbers;

  ListBuilder<String> _highlights;
  ListBuilder<String> get highlights =>
      _$this._highlights ??= new ListBuilder<String>();
  set highlights(ListBuilder<String> highlights) =>
      _$this._highlights = highlights;

  String _menuUrl;
  String get menuUrl => _$this._menuUrl;
  set menuUrl(String menuUrl) => _$this._menuUrl = menuUrl;

  RestaurantBuilder();

  RestaurantBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _url = _$v.url;
      _location = _$v.location?.toBuilder();
      _userRating = _$v.userRating?.toBuilder();
      _hasOnlineDelivery = _$v.hasOnlineDelivery;
      _cuisines = _$v.cuisines?.toBuilder();
      _timings = _$v.timings;
      _currency = _$v.currency;
      _featuredPhoto = _$v.featuredPhoto;
      _phoneNumbers = _$v.phoneNumbers?.toBuilder();
      _highlights = _$v.highlights?.toBuilder();
      _menuUrl = _$v.menuUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Restaurant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Restaurant;
  }

  @override
  void update(void Function(RestaurantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Restaurant build() {
    _$Restaurant _$result;
    try {
      _$result = _$v ??
          new _$Restaurant._(
              id: id,
              name: name,
              url: url,
              location: location.build(),
              userRating: userRating.build(),
              hasOnlineDelivery: hasOnlineDelivery,
              cuisines: cuisines.build(),
              timings: timings,
              currency: currency,
              featuredPhoto: featuredPhoto,
              phoneNumbers: phoneNumbers.build(),
              highlights: highlights.build(),
              menuUrl: menuUrl);
    } catch (_) {
      String _$failedField;
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
