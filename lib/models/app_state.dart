library app_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/auth/auth_state.dart';
import 'package:uber_food/models/restaurant_reviews/reviews_state.dart';
import 'package:uber_food/models/restaurants/favorite_restaurants_state.dart';
import 'package:uber_food/models/restaurants/restaurants_state.dart';
import 'package:uber_food/models/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..auth = AuthState.initialState().toBuilder()
        ..restaurantState = RestaurantsState.initialState().toBuilder()
        ..favoriteRestaurantsState = FavoriteRestaurantsState.initialState().toBuilder();
    });
  }

  factory AppState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AppState._();

  AuthState get auth;

  RestaurantsState get restaurantState;

  ReviewsState get reviewsState;

  FavoriteRestaurantsState get favoriteRestaurantsState;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
