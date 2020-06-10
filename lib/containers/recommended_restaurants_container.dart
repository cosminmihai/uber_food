import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';

class RecommendedRestaurantsContainer extends StatelessWidget {
  const RecommendedRestaurantsContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<List<Restaurant>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Restaurant>>(
      converter: (Store<AppState> store) {
        return store.state.restaurantState.recommendedRestaurants.toList();
      },
      builder: builder,
    );
  }
}
