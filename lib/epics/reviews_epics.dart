import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/reviews/create_restaurant_review.dart';
import 'package:uber_food/actions/reviews/listen_for_restaurant_reviews.dart';
import 'package:uber_food/data/reviews_api.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';

class ReviewsEpics {
  const ReviewsEpics({@required ReviewsApi reviewsApi})
      : assert(reviewsApi != null),
        _reviewsApi = reviewsApi;

  final ReviewsApi _reviewsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateRestaurantReview>(_createRestaurantReview),
      _listenForReviews,
    ]);
  }

  Stream<AppAction> _createRestaurantReview(Stream<CreateRestaurantReview> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateRestaurantReview action) => _reviewsApi
            .createReview(
              uid: store.state.auth.user.uid,
              restaurantId: store.state.restaurantState.selectedRestaurantId,
              text: action.text,
              rating: action.stars,
            )
            .asStream()
            .map<AppAction>((RestaurantReview review) => CreateRestaurantReviewSuccessful(review))
            .onErrorReturnWith((dynamic error) => CreateRestaurantReviewError(error))
            .doOnData(action.result));
  }

  Stream<AppAction> _listenForReviews(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForReviews>().flatMap((ListenForReviews action) => _reviewsApi
        .listenForReviews(store.state.reviewsState.selectedRestaurantId)
        .map<AppAction>((List<RestaurantReview> reviews) => OnReviewsEvent(reviews))
        .takeUntil(actions.whereType<StopListenForReviews>())
        .onErrorReturnWith((dynamic error) => ListenForReviewsError(error)));
  }
}
