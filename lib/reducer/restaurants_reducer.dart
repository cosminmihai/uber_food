import 'package:redux/redux.dart';
import 'package:uber_food/actions/restaurants/filter_restaurants.dart';
import 'package:uber_food/actions/restaurants/get_recommended_restaurants.dart';
import 'package:uber_food/models/restaurants/restaurants_state.dart';

Reducer<RestaurantsState> restaurantsState = combineReducers(<Reducer<RestaurantsState>>[
  TypedReducer<RestaurantsState, GetRecommendedRestaurantsSuccessful>(_getRecommendedRestaurantsSuccessful),
  TypedReducer<RestaurantsState, FilterRestaurant>(_filterRestaurant)
]);

RestaurantsState _getRecommendedRestaurantsSuccessful(
    RestaurantsState state, GetRecommendedRestaurantsSuccessful action) {
  return state
      .rebuild((RestaurantsStateBuilder b) => b.recommendedRestaurants = action.recommendedRestaurants.toBuilder());
}

RestaurantsState _filterRestaurant(RestaurantsState state, FilterRestaurant action) {
  return state.rebuild((RestaurantsStateBuilder b) => b.query = action.query);
}
