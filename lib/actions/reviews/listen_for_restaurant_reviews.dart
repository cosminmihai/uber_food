part of reviews_actions;

abstract class ListenForReviews //
    implements
        Built<ListenForReviews, ListenForReviewsBuilder>,
        AppAction //
{
  factory ListenForReviews([void Function(ListenForReviewsBuilder b) updates]) = _$ListenForReviews;

  ListenForReviews._();
}

abstract class StopListenForReviews //
    implements
        Built<StopListenForReviews, StopListenForReviewsBuilder>,
        AppAction //
{
  factory StopListenForReviews([void Function(StopListenForReviewsBuilder b) updates]) = _$StopListenForReviews;

  StopListenForReviews._();
}

abstract class OnReviewsEvent //
    implements
        Built<OnReviewsEvent, OnReviewsEventBuilder>,
        AppAction //
{
  factory OnReviewsEvent(List<RestaurantReview> reviews) {
    return _$OnReviewsEvent((OnReviewsEventBuilder b) {
      b.reviews = ListBuilder<RestaurantReview>(reviews);
    });
  }

  OnReviewsEvent._();

  BuiltList<RestaurantReview> get reviews;
}

abstract class ListenForReviewsError //
    implements
        Built<ListenForReviewsError, ListenForReviewsErrorBuilder>,
        ErrorAction //
{
  factory ListenForReviewsError(Object error) {
    return _$ListenForReviewsError((ListenForReviewsErrorBuilder b) => b.error = error);
  }

  ListenForReviewsError._();

  @override
  Object get error;
}
