import 'package:redux/redux.dart';
import 'package:uber_food/actions/favorite_restaurant/add_to_favorite.dart';
import 'package:uber_food/actions/favorite_restaurant/get_favorite_restaurants.dart';
import 'package:uber_food/actions/favorite_restaurant/remove_from_favorite.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';
import 'package:uber_food/models/restaurants/favorite_restaurants_state.dart';

Reducer<FavoriteRestaurantsState> favoriteRestaurantsState = combineReducers(<Reducer<FavoriteRestaurantsState>>[
  TypedReducer<FavoriteRestaurantsState, AddToFavoriteSuccessful>(_addToFavoriteSuccessful),
  TypedReducer<FavoriteRestaurantsState, GetFavoriteRestaurantsSuccessful>(_getFavoriteRestaurantsSuccessful),
  TypedReducer<FavoriteRestaurantsState, RemoveFromFavoriteSuccessful>(_removeFromFavoriteSuccessful),
]);

FavoriteRestaurantsState _addToFavoriteSuccessful(FavoriteRestaurantsState state, AddToFavoriteSuccessful action) {
  return state.rebuild((FavoriteRestaurantsStateBuilder b) {
    b.favoriteRestaurantsState.add(action.favoriteRestaurant);
  });
}

FavoriteRestaurantsState _getFavoriteRestaurantsSuccessful(
    FavoriteRestaurantsState state, GetFavoriteRestaurantsSuccessful action) {
  return state.rebuild((FavoriteRestaurantsStateBuilder b) {
    print('Se executa reducerul.');
    b.favoriteRestaurantsState = action.favoriteRestaurants.toBuilder();
  });
}

FavoriteRestaurantsState _removeFromFavoriteSuccessful(
    FavoriteRestaurantsState state, RemoveFromFavoriteSuccessful action) {
  return state.rebuild((FavoriteRestaurantsStateBuilder b) {
    b.favoriteRestaurantsState
        .removeWhere((FavoriteRestaurant favoriteRestaurant) => favoriteRestaurant.id == action.favoriteRestaurantId);
  });
}
