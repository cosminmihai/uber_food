part of restaurant_models;

abstract class FavoriteRestaurantsState implements Built<FavoriteRestaurantsState, FavoriteRestaurantsStateBuilder> {
  factory FavoriteRestaurantsState.initialState() {
    return _$FavoriteRestaurantsState((FavoriteRestaurantsStateBuilder b) {});
  }

  factory FavoriteRestaurantsState.fromJson(Map<dynamic, dynamic> json) =>
      serializers.deserializeWith(serializer, json)!;

  FavoriteRestaurantsState._();

  BuiltList<FavoriteRestaurant> get favoriteRestaurantsState;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<FavoriteRestaurantsState> get serializer => _$favoriteRestaurantsStateSerializer;
}
