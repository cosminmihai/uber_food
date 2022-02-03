part of restaurant_actions;

@freezed
class CreateRestaurantReview with _$CreateRestaurantReview implements AppAction {
  const factory CreateRestaurantReview({
    required String text,
    required int rating,
    ActionResult? actionResult,
  }) = CreateRestaurantReview$;

  const factory CreateRestaurantReview.successful(Review review) = CreateRestaurantReviewSuccessful;

  @Implements<ErrorAction>()
  const factory CreateRestaurantReview.error(Object error, StackTrace stackTrace) = CreateRestaurantReviewError;
}
