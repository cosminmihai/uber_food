part of restaurant_models;

abstract class RestaurantLocation implements Built<RestaurantLocation, RestaurantLocationBuilder> {
  factory RestaurantLocation([void Function(RestaurantLocationBuilder b) updates]) = _$RestaurantLocation;

  factory RestaurantLocation.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  RestaurantLocation._();

  String get address;

  String get locality;

  String get city;

  double get latitude;

  double get longitude;

  @BuiltValueField(wireName: 'locality_verbose')
  String get localityVerbose;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RestaurantLocation> get serializer => _$restaurantLocationSerializer;
}
