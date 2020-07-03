import 'package:redux/redux.dart';
import 'package:uber_food/actions/reviews/listen_for_restaurant_reviews.dart';
import 'package:uber_food/actions/reviews/set_selected_review.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';
import 'package:uber_food/models/restaurant_reviews/reviews_state.dart';

Reducer<ReviewsState> reviewsReducer = combineReducers(<Reducer<ReviewsState>>[
  TypedReducer<ReviewsState, OnReviewsEvent>(_onReviewsEvent),
  TypedReducer<ReviewsState, SetSelectedReview>(_setSelectedReview),
]);

ReviewsState _onReviewsEvent(ReviewsState state, OnReviewsEvent action) {
  return state.rebuild((ReviewsStateBuilder b) {
    for (RestaurantReview review in action.reviews) {
      b.reviews[review.id] = review;
    }
  });
}

ReviewsState _setSelectedReview(ReviewsState state, SetSelectedReview action) {
  return state.rebuild((ReviewsStateBuilder b) => b.reviewUid = action.reviewUid);
}
