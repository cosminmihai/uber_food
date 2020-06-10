library restaurants_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:uber_food/models/serializers.dart';

part 'restaurants_state.g.dart';

abstract class RestaurantsState implements Built<RestaurantsState, RestaurantsStateBuilder> {
  factory RestaurantsState.initialState() {
    return _$RestaurantsState((RestaurantsStateBuilder b) {});
  }

  factory RestaurantsState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  RestaurantsState._();

  BuiltMap<String, double> get userLocation;

  BuiltList<Restaurant> get searchedRestaurants;

  BuiltList<Restaurant> get recommendedRestaurants;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<RestaurantsState> get serializer => _$restaurantsStateSerializer;
}
