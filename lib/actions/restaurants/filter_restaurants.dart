library filterRestaurants;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';

part 'filter_restaurants.g.dart';

abstract class FilterRestaurant //
    implements
        Built<FilterRestaurant, FilterRestaurantBuilder>,
        AppAction //
{
  factory FilterRestaurant(String query) {
    return _$FilterRestaurant((FilterRestaurantBuilder b) => b.query = query);
  }

  FilterRestaurant._();

  String get query;
}
