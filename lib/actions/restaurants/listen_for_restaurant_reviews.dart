part of restaurant_actions;

@freezed
class ListenForRestaurantReview with _$ListenForRestaurantReview implements AppAction {
  const factory ListenForRestaurantReview.start() = ListenForRestaurantReviewStart;

  const factory ListenForRestaurantReview.done() = ListenForRestaurantReviewDone;

  const factory ListenForRestaurantReview.event(List<Review> reviews) = OnRestaurantReviewEvent;

  @Implements<ErrorAction>()
  const factory ListenForRestaurantReview.error(Object error, StackTrace stackTrace) = _ListenForRestaurantReviewError;
}
