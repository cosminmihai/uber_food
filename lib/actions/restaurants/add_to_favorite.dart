part of restaurant_actions;

@freezed
class AddToFavorite with _$AddToFavorite implements AppAction {
  const factory AddToFavorite({required String userId, required Restaurant selectedRestaurant}) = AddToFavorite$;

  const factory AddToFavorite.successful(FavoriteRestaurant restaurant) = AddToFavoriteSuccessful;

  @Implements<ErrorAction>()
  const factory AddToFavorite.error(Object error, StackTrace stackTrace) = AddToFavoriteError;
}
