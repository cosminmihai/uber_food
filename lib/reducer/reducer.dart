import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/reducer/auth_reducer.dart';
import 'package:uber_food/reducer/favorite_restaurant_reducer.dart';
import 'package:uber_food/reducer/restaurants_reducer.dart';
import 'package:uber_food/reducer/reviews_reducer.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is ErrorAction) {
    final dynamic error = action.error;
    try {
      print('Error: ${error}');
      print('StackTrace: ${error.stackTrace}');
    } catch (_) {}
  }
  print(action);
  return state.rebuild((AppStateBuilder b) {
    b
      ..auth = authReducer(state.auth, action).toBuilder()
      ..restaurantState = restaurantsState(state.restaurantState, action).toBuilder()
      ..reviewsState = reviewsReducer(state.reviewsState, action).toBuilder()
      ..favoriteRestaurantsState = favoriteRestaurantsState(state.favoriteRestaurantsState, action).toBuilder();
  });
}
