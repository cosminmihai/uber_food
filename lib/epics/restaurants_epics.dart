import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/actions/restaurants/index.dart';
import 'package:uber_food/data/restaurant_api.dart';
import 'package:uber_food/models/index.dart';

class RestaurantsEpics {
  RestaurantsEpics({required RestaurantApi restaurantApi}) : _restaurantApi = restaurantApi;
  final RestaurantApi _restaurantApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, AddToFavorite$>(_addToFavorite),
      TypedEpic<AppState, CreateRestaurantReview$>(_createRestaurantReview),
      TypedEpic<AppState, GetFavoriteRestaurants>(_getFavoriteRestaurant),
      TypedEpic<AppState, GetRecommendedRestaurantsStart>(_getRecommendedRestaurants),
      TypedEpic<AppState, RemoveFromFavorite$>(_removeFromFavorite),
    ]);
  }

  Stream<AppAction> _addToFavorite(Stream<AddToFavorite$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddToFavorite$ action) => Stream<void>.value(null)
            .asyncMap((_) {
              return _restaurantApi.addToFavorite(
                userId: store.state.auth.user!.uid,
                restaurant: action.selectedRestaurant,
              );
            })
            .map<AppAction>((FavoriteRestaurant restaurant) => AddToFavorite.successful(restaurant))
            .onErrorReturnWith($AddToFavorite.error));
  }

  Stream<AppAction> _createRestaurantReview(Stream<CreateRestaurantReview$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreateRestaurantReview$ action) => Stream<void>.value(null)
            .asyncMap((_) => _restaurantApi.createReview(
                  uid: store.state.auth.user!.uid,
                  restaurantId: store.state.restaurants.selectedRestaurantId!,
                  text: action.text,
                  rating: action.rating,
                ))
            .map<AppAction>((Review review) => CreateRestaurantReview.successful(review))
            .onErrorReturnWith($CreateRestaurantReview.error)
            .doOnData(action.actionResult ?? (_) {}));
  }

  Stream<AppAction> _getFavoriteRestaurant(Stream<GetFavoriteRestaurants> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFavoriteRestaurants action) => Stream<void>.value(null)
            .asyncMap((_) => _restaurantApi.getFavoriteRestaurant(store.state.auth.user!.uid))
            .map<AppAction>((List<FavoriteRestaurant> restaurants) => GetFavoriteRestaurants.successful(restaurants))
            .onErrorReturnWith($GetFavoriteRestaurants.error));
  }

  Stream<AppAction> _getRecommendedRestaurants(
    Stream<GetRecommendedRestaurantsStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions //
        .flatMap((GetRecommendedRestaurantsStart action) => Stream<void>.value(null)
            .asyncMap((_) => _restaurantApi.getRecommendedRestaurants(action.location))
            .map<AppAction>((List<Restaurant> restaurants) => GetRecommendedRestaurants.successful(restaurants))
            .onErrorReturnWith($GetRecommendedRestaurants.error));
  }

  Stream<AppAction> _removeFromFavorite(Stream<RemoveFromFavorite$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveFromFavorite$ action) => Stream<void>.value(null)
            .asyncMap((_) {
              return _restaurantApi.removeFromFavorite(
                userId: store.state.auth.user!.uid,
                restaurantId: action.restaurantId,
              );
            })
            .mapTo<AppAction>(RemoveFromFavorite.successful(action.restaurantId))
            .onErrorReturnWith($RemoveFromFavorite.error));
  }
}
