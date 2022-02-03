import 'package:redux/redux.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/models/restaurants/index.dart';

Reducer<RestaurantsState> restaurantsState = combineReducers(<Reducer<RestaurantsState>>[
  TypedReducer<RestaurantsState, AddToFavoriteSuccessful>(_addToFavoriteSuccessful),
  TypedReducer<RestaurantsState, CreateRestaurantReviewSuccessful>(_createRestaurantReviewSuccessful),
  TypedReducer<RestaurantsState, GetFavoriteRestaurantsSuccessful>(_getFavoriteRestaurantsSuccessful),
  TypedReducer<RestaurantsState, GetRecommendedRestaurantsSuccessful>(_getRecommendedRestaurantsSuccessful),
  TypedReducer<RestaurantsState, OnRestaurantReviewEvent>(_onRestaurantReviewEvent),
  TypedReducer<RestaurantsState, OnUserReviewEvent>(_onUserReviewEvent),
]);

RestaurantsState _addToFavoriteSuccessful(RestaurantsState state, AddToFavoriteSuccessful action) {
  return state.copyWith(favorite: <FavoriteRestaurant>[...state.favorite, action.restaurant]);
}

RestaurantsState _createRestaurantReviewSuccessful(RestaurantsState state, CreateRestaurantReviewSuccessful action) {
  return state.copyWith(reviews: <String, Review>{
    ...state.reviews,
    action.review.uid: action.review,
  });
}

RestaurantsState _getFavoriteRestaurantsSuccessful(RestaurantsState state, GetFavoriteRestaurantsSuccessful action) {
  return state.copyWith(favorite: action.restaurants);
}

RestaurantsState _getRecommendedRestaurantsSuccessful(
    RestaurantsState state, GetRecommendedRestaurantsSuccessful action) {
  return state.copyWith(restaurants: <String, Restaurant>{
    ...state.restaurants,
    for (final Restaurant restaurant in action.restaurants) restaurant.id: restaurant
  });
}

RestaurantsState _onRestaurantReviewEvent(RestaurantsState state, OnRestaurantReviewEvent action) {
  return state.copyWith(reviews: <String, Review>{
    ...state.reviews,
    for (final Review review in action.reviews) review.id: review,
  });
}

RestaurantsState _onUserReviewEvent(RestaurantsState state, OnUserReviewEvent action) {
  return state.copyWith(reviews: <String, Review>{
    ...state.reviews,
    for (final Review review in action.reviews) review.id: review,
  });
}
