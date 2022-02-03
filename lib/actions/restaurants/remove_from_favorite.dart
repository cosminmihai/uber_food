part of restaurant_actions;

@freezed
class RemoveFromFavorite with _$RemoveFromFavorite implements AppAction {
  const factory RemoveFromFavorite(String restaurantId) = RemoveFromFavorite$;

  const factory RemoveFromFavorite.successful(String restaurantId) = RemoveFromFavoriteSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveFromFavorite.error(Object error, StackTrace stackTrace) = RemoveFromFavoriteError;
}
