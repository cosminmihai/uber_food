part of restaurant_models;

abstract class FavoriteRestaurant implements Built<FavoriteRestaurant, FavoriteRestaurantBuilder> {
  factory FavoriteRestaurant({
    required String id,
    required Restaurant restaurantData,
    required String userId,
  }) {
    return _$FavoriteRestaurant((FavoriteRestaurantBuilder b) {
      b
        ..id = id
        ..restaurantData = restaurantData.toBuilder()
        ..userId = userId;
    });
  }

  factory FavoriteRestaurant.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  FavoriteRestaurant._();

  String get id;

  Restaurant get restaurantData;

  String get userId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<FavoriteRestaurant> get serializer => _$favoriteRestaurantSerializer;
}
