library listen_for_user_reviews;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';

part 'listen_for_user_reviews.g.dart';

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
