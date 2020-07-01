import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';

class FavoriteRestaurantsContainer extends StatelessWidget {
  const FavoriteRestaurantsContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<List<FavoriteRestaurant>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<FavoriteRestaurant>>(
      converter: (Store<AppState> store) {
        return store.state.favoriteRestaurantsState.favoriteRestaurantsState
            .where((FavoriteRestaurant restaurant) => restaurant.userId == store.state.auth.user.uid)
            .toSet()
            .toList();
      },
      builder: builder,
    );
  }
}
