library create_restaurant_review;

import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';


part 'create_restaurant_review.g.dart';

abstract class CreateRestaurantReview //
    implements
        Built<CreateRestaurantReview, CreateRestaurantReviewBuilder>,
        AppAction //
{
  CreateRestaurantReview._();

  factory CreateRestaurantReview({
    @required String text,
    @required int stars,
    @required ActionResult result,
  }) {
    return _$CreateRestaurantReview((CreateRestaurantReviewBuilder b) {
      b
        ..text = text
        ..stars = stars
        ..result = result;
    });
  }

  String get text;

  int get stars;

  @nullable
  ActionResult get result;
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
