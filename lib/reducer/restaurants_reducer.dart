import 'package:redux/redux.dart';
import 'package:uber_food/actions/restaurants/get_recommended_restaurants.dart';
import 'package:uber_food/models/restaurants/restaurants_state.dart';

Reducer<RestaurantsState> restaurantsState = combineReducers(<Reducer<RestaurantsState>>[
  TypedReducer<RestaurantsState, GetRecommendedRestaurantsSuccessful>(_getRecommendedRestaurantsSuccessful)
]);

RestaurantsState _getRecommendedRestaurantsSuccessful(
    RestaurantsState state, GetRecommendedRestaurantsSuccessful action) {
  return state
      .rebuild((RestaurantsStateBuilder b) => b.recommendedRestaurants = action.recommendedRestaurants.toBuilder());
}
