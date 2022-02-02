part of reviews_actions;

abstract class CreateRestaurantReview //
    implements
        Built<CreateRestaurantReview, CreateRestaurantReviewBuilder>,
        AppAction //
{
  factory CreateRestaurantReview({
    required String text,
    required int stars,
    required ActionResult result,
  }) {
    return _$CreateRestaurantReview((CreateRestaurantReviewBuilder b) {
      b
        ..text = text
        ..stars = stars
        ..result = result;
    });
  }

  CreateRestaurantReview._();

  String get text;

  int get stars;

  ActionResult? get result;
}

abstract class CreateRestaurantReviewSuccessful //
    implements
        Built<CreateRestaurantReviewSuccessful, CreateRestaurantReviewSuccessfulBuilder>,
        AppAction //
{
  factory CreateRestaurantReviewSuccessful(RestaurantReview restaurantReview) {
    return _$CreateRestaurantReviewSuccessful(
        (CreateRestaurantReviewSuccessfulBuilder b) => b.restaurantReview = restaurantReview.toBuilder());
  }

  CreateRestaurantReviewSuccessful._();

  RestaurantReview get restaurantReview;
}

abstract class CreateRestaurantReviewError //
    implements
        Built<CreateRestaurantReviewError, CreateRestaurantReviewErrorBuilder>,
        ErrorAction //
{
  factory CreateRestaurantReviewError(Object error) {
    return _$CreateRestaurantReviewError((CreateRestaurantReviewErrorBuilder b) => b.error = error);
  }

  CreateRestaurantReviewError._();

  @override
  Object get error;
}
