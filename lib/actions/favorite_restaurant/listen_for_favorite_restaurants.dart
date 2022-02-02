part of favorite_restaurant_actions;

abstract class ListenForFavoriteRestaurants //
    implements
        Built<ListenForFavoriteRestaurants, ListenForFavoriteRestaurantsBuilder>,
        AppAction //
{
  factory ListenForFavoriteRestaurants([void Function(ListenForFavoriteRestaurantsBuilder b) updates]) =
      _$ListenForFavoriteRestaurants;

  ListenForFavoriteRestaurants._();
}

abstract class StopListenForFavoriteRestaurants //
    implements
        Built<StopListenForFavoriteRestaurants, StopListenForFavoriteRestaurantsBuilder>,
        AppAction //
{
  factory StopListenForFavoriteRestaurants([void Function(StopListenForFavoriteRestaurantsBuilder b) updates]) =
      _$StopListenForFavoriteRestaurants;

  StopListenForFavoriteRestaurants._();
}

abstract class OnFavoriteRestaurantsEvent //
    implements
        Built<OnFavoriteRestaurantsEvent, OnFavoriteRestaurantsEventBuilder>,
        AppAction //
{
  factory OnFavoriteRestaurantsEvent(List<FavoriteRestaurant> favoriteRestaurants) {
    return _$OnFavoriteRestaurantsEvent((OnFavoriteRestaurantsEventBuilder b) =>
        b.favoriteRestaurants = ListBuilder<FavoriteRestaurant>(favoriteRestaurants));
  }

  OnFavoriteRestaurantsEvent._();

  BuiltList<FavoriteRestaurant> get favoriteRestaurants;
}

abstract class ListenForFavoriteRestaurantsError //
    implements
        Built<ListenForFavoriteRestaurantsError, ListenForFavoriteRestaurantsErrorBuilder>,
        ErrorAction //
{
  factory ListenForFavoriteRestaurantsError(Object error) {
    return _$ListenForFavoriteRestaurantsError((ListenForFavoriteRestaurantsErrorBuilder b) => b.error = error);
  }

  ListenForFavoriteRestaurantsError._();

  @override
  Object get error;
}
