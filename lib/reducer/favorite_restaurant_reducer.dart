import 'package:redux/redux.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/models/restaurants/index.dart';

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
