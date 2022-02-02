part of restaurant_models;

abstract class RestaurantsState implements Built<RestaurantsState, RestaurantsStateBuilder> {
  factory RestaurantsState.initialState() {
    return _$RestaurantsState((RestaurantsStateBuilder b) {});
  }

  factory RestaurantsState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  RestaurantsState._();

  BuiltList<Restaurant> get searchedRestaurants;

  BuiltList<Restaurant> get recommendedRestaurants;

  String? get query;

  String? get selectedRestaurantId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RestaurantsState> get serializer => _$restaurantsStateSerializer;
}
