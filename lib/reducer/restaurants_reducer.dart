import 'package:redux/redux.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/models/restaurants/index.dart';

Reducer<RestaurantsState> restaurantsState = combineReducers(<Reducer<RestaurantsState>>[
  TypedReducer<RestaurantsState, GetRecommendedRestaurantsSuccessful>(_getRecommendedRestaurantsSuccessful),
  TypedReducer<RestaurantsState, FilterRestaurant>(_filterRestaurant),
  TypedReducer<RestaurantsState, SetSelectedRestaurant>(_setSelectedRestaurant),
]);

RestaurantsState _getRecommendedRestaurantsSuccessful(
    RestaurantsState state, GetRecommendedRestaurantsSuccessful action) {
  return state
      .rebuild((RestaurantsStateBuilder b) => b.recommendedRestaurants = action.recommendedRestaurants.toBuilder());
}

RestaurantsState _filterRestaurant(RestaurantsState state, FilterRestaurant action) {
  return state.rebuild((RestaurantsStateBuilder b) => b.query = action.query);
}

RestaurantsState _setSelectedRestaurant(RestaurantsState state, SetSelectedRestaurant action) {
  return state.rebuild((RestaurantsStateBuilder b) => b.selectedRestaurantId = action.restaurantId);
}
