import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';

class RestaurantReviewsContainer extends StatelessWidget {
  const RestaurantReviewsContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<List<RestaurantReview>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<RestaurantReview>>(
      converter: (Store<AppState> store) {
        return store.state.reviewsState.reviews.values
            .where((RestaurantReview review) => review.restaurantId == store.state.restaurantState.selectedRestaurantId)
            .toList();
      },
      builder: builder,
    );
  }
}
