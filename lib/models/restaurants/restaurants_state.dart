part of restaurant_models;

@freezed
class RestaurantsState with _$RestaurantsState {
  const factory RestaurantsState({
    @Default(<String>{}) Set<String> searchedRestaurants,
    @Default(<String, Restaurant>{}) Map<String, Restaurant> restaurants,
    @Default(<String, Review>{}) Map<String, Review> reviews,
    @Default(<String>{}) Set<String> nearByRestaurants,
    @Default(<FavoriteRestaurant>[]) List<FavoriteRestaurant> favorite,
    String? query,
    String? selectedRestaurantId,
  }) = _RestaurantsState$;
}
