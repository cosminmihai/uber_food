part of reviews_actions;

abstract class ListenForUserReviews //
    implements
        Built<ListenForUserReviews, ListenForUserReviewsBuilder>,
        AppAction //
{
  factory ListenForUserReviews([void Function(ListenForUserReviewsBuilder b) updates]) = _$ListenForUserReviews;

  ListenForUserReviews._();
}

abstract class StopListenForUserReviews //
    implements
        Built<StopListenForUserReviews, StopListenForUserReviewsBuilder>,
        AppAction //
{
  factory StopListenForUserReviews([void Function(StopListenForUserReviewsBuilder b) updates]) =
      _$StopListenForUserReviews;

  StopListenForUserReviews._();
}

abstract class OnUserReviewsEvent //
    implements
        Built<OnUserReviewsEvent, OnUserReviewsEventBuilder>,
        AppAction //
{
  factory OnUserReviewsEvent(List<RestaurantReview> reviews) {
    return _$OnUserReviewsEvent((OnUserReviewsEventBuilder b) {
      b.userReviews = ListBuilder<RestaurantReview>(reviews);
    });
  }

  OnUserReviewsEvent._();

  BuiltList<RestaurantReview> get userReviews;
}

abstract class ListenForUserReviewsError //
    implements
        Built<ListenForUserReviewsError, ListenForUserReviewsErrorBuilder>,
        ErrorAction //
{
  factory ListenForUserReviewsError(Object error) {
    return _$ListenForUserReviewsError((ListenForUserReviewsErrorBuilder b) => b.error = error);
  }

  ListenForUserReviewsError._();

  @override
  Object get error;
}
