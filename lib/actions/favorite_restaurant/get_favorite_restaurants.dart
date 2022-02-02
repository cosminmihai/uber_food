part of favorite_restaurant_actions;

abstract class GetFavoriteRestaurants //
    implements
        Built<GetFavoriteRestaurants, GetFavoriteRestaurantsBuilder>,
        AppAction //
{
  factory GetFavoriteRestaurants(String userId) {
    return _$GetFavoriteRestaurants((GetFavoriteRestaurantsBuilder b) => b.userId = userId);
  }

  GetFavoriteRestaurants._();

  String get userId;
}

abstract class GetFavoriteRestaurantsSuccessful //
    implements
        Built<GetFavoriteRestaurantsSuccessful, GetFavoriteRestaurantsSuccessfulBuilder>,
        AppAction //
{
  factory GetFavoriteRestaurantsSuccessful(List<FavoriteRestaurant> favoriteRestaurants) {
    return _$GetFavoriteRestaurantsSuccessful((GetFavoriteRestaurantsSuccessfulBuilder b) =>
        b.favoriteRestaurants = ListBuilder<FavoriteRestaurant>(favoriteRestaurants));
  }

  GetFavoriteRestaurantsSuccessful._();

  BuiltList<FavoriteRestaurant> get favoriteRestaurants;
}

abstract class GetFavoriteRestaurantsError //
    implements
        Built<GetFavoriteRestaurantsError, GetFavoriteRestaurantsErrorBuilder>,
        ErrorAction //
{
  factory GetFavoriteRestaurantsError(Object error) {
    return _$GetFavoriteRestaurantsError((GetFavoriteRestaurantsErrorBuilder b) => b.error = error);
  }

  GetFavoriteRestaurantsError._();

  @override
  Object get error;
}
