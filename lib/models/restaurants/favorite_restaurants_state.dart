library favorite_restaurants_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';
import 'package:uber_food/models/serializers.dart';

part 'favorite_restaurants_state.g.dart';

abstract class FavoriteRestaurantsState implements Built<FavoriteRestaurantsState, FavoriteRestaurantsStateBuilder> {
  factory FavoriteRestaurantsState.initialState() {
    return _$FavoriteRestaurantsState((FavoriteRestaurantsStateBuilder b) {});
  }

  factory FavoriteRestaurantsState.fromJson(Map<dynamic, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  FavoriteRestaurantsState._();

  BuiltList<FavoriteRestaurant> get favoriteRestaurantsState;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<FavoriteRestaurantsState> get serializer => _$favoriteRestaurantsStateSerializer;
}
