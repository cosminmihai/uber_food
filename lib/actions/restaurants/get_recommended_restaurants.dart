part of restaurant_actions;

const String _kGetRecommendedRestaurantsPendingId = 'GetRecommendedRestaurants';

@freezed
class GetRecommendedRestaurants with _$GetRecommendedRestaurants implements AppAction {
  @Implements<ActionStart>()
  const factory GetRecommendedRestaurants.start({
    required LatLng location,
    @Default(_kGetRecommendedRestaurantsPendingId) String pendingId,
  }) = GetRecommendedRestaurantsStart;

  @Implements<ActionDone>()
  const factory GetRecommendedRestaurants.successful(
    List<Restaurant> restaurants, [
    @Default(_kGetRecommendedRestaurantsPendingId) String pendingId,
  ]) = GetRecommendedRestaurantsSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetRecommendedRestaurants.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetRecommendedRestaurantsPendingId) String pendingId,
  ]) = GetRecommendedRestaurantsError;

  static String get pendingKey => _kGetRecommendedRestaurantsPendingId;
}
