import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/data/restaurant_api.dart';
import 'package:uber_food/models/index.dart';

class RestaurantsEpics {
  RestaurantsEpics({required RestaurantApi restaurantApi}) : _restaurantApi = restaurantApi;
  final RestaurantApi _restaurantApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetRecommendedRestaurants>(_getRecommendedRestaurants),
    ]);
  }

  Stream<AppAction> _getRecommendedRestaurants(Stream<GetRecommendedRestaurants> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetRecommendedRestaurants action) => _restaurantApi
            .getRecommendedRestaurants(action.location)
            .asStream()
            .expand<AppAction>((List<Restaurant> restaurants) => <AppAction>[
                  GetRecommendedRestaurantsSuccessful(restaurants),
                  GetFavoriteRestaurants(store.state.auth.user!.uid),
                ])
            .onErrorReturnWith((dynamic error, _) => GetRecommendedRestaurantsError(error)));
  }
}
