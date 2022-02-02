import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/index.dart';

class RecommendedRestaurantsContainer extends StatelessWidget {
  const RecommendedRestaurantsContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<List<Restaurant>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Restaurant>>(
      converter: (Store<AppState> store) {
        return store.state.restaurantState.recommendedRestaurants
            .where((Restaurant restaurant) => restaurant.featuredPhoto != null && restaurant.featuredPhoto!.isNotEmpty)
            .where((Restaurant restaurant) =>
                store.state.restaurantState.query == null ||
                restaurant.name.toLowerCase().contains(store.state.restaurantState.query!.toLowerCase()) ||
                restaurant.location.address.toLowerCase().contains(store.state.restaurantState.query!.toLowerCase()))
            .toList();
      },
      builder: builder,
    );
  }
}
