part of restaurant_models;

abstract class Restaurant implements Built<Restaurant, RestaurantBuilder> {
  factory Restaurant() = _$Restaurant;

  factory Restaurant.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  Restaurant._();

  String get id;

  String get name;

  String get url;

  RestaurantLocation get location;

  @BuiltValueField(wireName: 'user_rating')
  UserRating get userRating;

  @BuiltValueField(wireName: 'has_online_delivery')
  bool get hasOnlineDelivery;

  BuiltList<String> get cuisines;

  String get timings;

  String get currency;

  @BuiltValueField(wireName: 'featured_image')
  String? get featuredPhoto;

  BuiltList<String> get phoneNumbers;

  BuiltList<String> get highlights;

  @BuiltValueField(wireName: 'menu_url')
  String get menuUrl;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Restaurant> get serializer => _$restaurantSerializer;
}
