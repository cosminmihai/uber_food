import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/data/favorite_restaurant_api.dart';
import 'package:uber_food/models/index.dart';

class FavoriteRestaurantEpics {
  const FavoriteRestaurantEpics({required FavoriteRestaurantApi favoriteRestaurantApi})
      : _favoriteRestaurantApi = favoriteRestaurantApi;

  final FavoriteRestaurantApi _favoriteRestaurantApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, AddToFavorite>(_addToFavorite),
      TypedEpic<AppState, RemoveFromFavorite>(_removeFromFavorite),
      TypedEpic<AppState, GetFavoriteRestaurants>(_getFavoriteRestaurant),
    ]);
  }

  Stream<AppAction> _getFavoriteRestaurant(Stream<GetFavoriteRestaurants> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFavoriteRestaurants action) => _favoriteRestaurantApi
            .getFavoriteRestaurant(store.state.auth.user!.uid)
            .asStream()
            .map<AppAction>(
                (List<FavoriteRestaurant> favoriteRestaurants) => GetFavoriteRestaurantsSuccessful(favoriteRestaurants))
            .onErrorReturnWith((dynamic error, _) => GetFavoriteRestaurantsError(error)));
  }

  Stream<AppAction> _addToFavorite(Stream<AddToFavorite> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((AddToFavorite action) => _favoriteRestaurantApi
            .addToFavorite(userId: store.state.auth.user!.uid, selectedRestaurant: action.selectedRestaurant)
            .asStream()
            .map<AppAction>((FavoriteRestaurant favoriteRestaurant) => AddToFavoriteSuccessful(favoriteRestaurant))
            .onErrorReturnWith((dynamic error, _) => AddToFavoriteError(error)));
  }

  Stream<AppAction> _removeFromFavorite(Stream<RemoveFromFavorite> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((RemoveFromFavorite action) => _favoriteRestaurantApi
            .removeFromFavorite(favoriteRestaurantId: action.favoriteRestaurantId)
            .asStream()
            .map<AppAction>((_) => RemoveFromFavoriteSuccessful(action.favoriteRestaurantId))
            .onErrorReturnWith((dynamic error, _) => RemoveFromFavoriteError(error)));
  }
}
