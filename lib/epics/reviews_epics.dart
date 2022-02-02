import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/data/reviews_api.dart';
import 'package:uber_food/models/index.dart';

class ReviewsEpics {
  const ReviewsEpics({required ReviewsApi reviewsApi}) : _reviewsApi = reviewsApi;

  final ReviewsApi _reviewsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateRestaurantReview>(_createRestaurantReview),
      _listenForReviews,
      _listenForUserReviews,
    ]);
  }

  Stream<AppAction> _createRestaurantReview(Stream<CreateRestaurantReview> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateRestaurantReview action) => _reviewsApi
            .createReview(
              uid: store.state.auth.user!.uid,
              restaurantId: store.state.restaurantState.selectedRestaurantId!,
              text: action.text,
              rating: action.stars,
            )
            .asStream()
            .map<AppAction>((RestaurantReview review) => CreateRestaurantReviewSuccessful(review))
            .onErrorReturnWith((dynamic error, _) => CreateRestaurantReviewError(error))
            .doOnData(action.result ?? (_) {}));
  }

  Stream<AppAction> _listenForReviews(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForReviews>()
        .flatMap((ListenForReviews action) => _reviewsApi
            .listenForReviews(store.state.reviewsState.selectedRestaurantId!)
            .expand<AppAction>((List<RestaurantReview> reviews) => <AppAction>[
                  OnReviewsEvent(reviews),
                  ...reviews
                      .where((RestaurantReview element) => store.state.auth.usersForReviews[element.uid] == null)
                      .map((RestaurantReview review) => GetUserForReview(review.uid))
                ])
            .takeUntil(actions.whereType<StopListenForReviews>())
            .onErrorReturnWith((dynamic error, _) => ListenForReviewsError(error)));
  }

  Stream<AppAction> _listenForUserReviews(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions //
        .whereType<ListenForReviews>()
        .flatMap((ListenForReviews action) => _reviewsApi
            .listenForUserReviews(store.state.auth.user!.uid)
            .expand<AppAction>((List<RestaurantReview> reviews) => <AppAction>[
                  OnUserReviewsEvent(reviews),
                ])
            .takeUntil(actions.whereType<StopListenForUserReviews>())
            .onErrorReturnWith((dynamic error, _) => ListenForUserReviewsError(error)));
  }
}
