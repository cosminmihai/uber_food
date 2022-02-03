import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/index.dart';

class FavoriteRestaurantsContainer extends StatelessWidget {
  const FavoriteRestaurantsContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<List<FavoriteRestaurant>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<FavoriteRestaurant>>(
      converter: (Store<AppState> store) {
        return store.state.restaurants.favorite
            .where((FavoriteRestaurant favorite) => favorite.userId == store.state.auth.user!.uid)
            .toList();
      },
      builder: builder,
    );
  }
}
