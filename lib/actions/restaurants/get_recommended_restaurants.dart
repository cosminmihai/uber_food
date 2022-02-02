part of restaurant_actions;

abstract class GetRecommendedRestaurants //
    implements
        Built<GetRecommendedRestaurants, GetRecommendedRestaurantsBuilder>,
        AppAction //
{
  factory GetRecommendedRestaurants({required LatLng locationData}) {
    return _$GetRecommendedRestaurants((GetRecommendedRestaurantsBuilder b) => b.location = locationData);
  }

  GetRecommendedRestaurants._();

  LatLng get location;
}

abstract class GetRecommendedRestaurantsSuccessful //
    implements
        Built<GetRecommendedRestaurantsSuccessful, GetRecommendedRestaurantsSuccessfulBuilder>,
        AppAction //
{
  factory GetRecommendedRestaurantsSuccessful(List<Restaurant> recommendedRestaurants) {
    return _$GetRecommendedRestaurantsSuccessful((GetRecommendedRestaurantsSuccessfulBuilder b) {
      b.recommendedRestaurants = ListBuilder<Restaurant>(recommendedRestaurants);
    });
  }

  GetRecommendedRestaurantsSuccessful._();

  BuiltList<Restaurant> get recommendedRestaurants;
}

abstract class GetRecommendedRestaurantsError //
    implements
        Built<GetRecommendedRestaurantsError, GetRecommendedRestaurantsErrorBuilder>,
        ErrorAction //
{
  factory GetRecommendedRestaurantsError(Object error) {
    return _$GetRecommendedRestaurantsError((GetRecommendedRestaurantsErrorBuilder b) => b.error = error);
  }

  GetRecommendedRestaurantsError._();

  @override
  Object get error;
}
