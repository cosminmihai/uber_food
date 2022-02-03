import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/index.dart';

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<List<Review>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Review>>(
      converter: (Store<AppState> store) {
        final RestaurantsState state = store.state.restaurants;
        return state.reviews.values
            .where((Review review) => review.restaurantId == state.selectedRestaurantId)
            .toList();
      },
      builder: builder,
    );
  }
}
