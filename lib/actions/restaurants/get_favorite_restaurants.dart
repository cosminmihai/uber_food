part of restaurant_actions;

const String _kGetFavoriteRestaurantsPendingId = 'GetFavoriteRestaurants';

@freezed
class GetFavoriteRestaurants with _$GetFavoriteRestaurants implements AppAction {
  @Implements<ActionStart>()
  const factory GetFavoriteRestaurants.start({
    @Default(_kGetFavoriteRestaurantsPendingId) String pendingId,
  }) = GetFavoriteRestaurantsStart;

  @Implements<ActionDone>()
  const factory GetFavoriteRestaurants.successful(
    List<FavoriteRestaurant> restaurants, [
    @Default(_kGetFavoriteRestaurantsPendingId) String pendingId,
  ]) = GetFavoriteRestaurantsSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetFavoriteRestaurants.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetFavoriteRestaurantsPendingId) String pendingId,
  ]) = GetFavoriteRestaurantsError;

  static String get pendingKey => _kGetFavoriteRestaurantsPendingId;
}
