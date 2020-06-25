library set_selected_restaurant;

import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';

part 'set_selected_restaurant.g.dart';

abstract class SetSelectedRestaurant //
    implements
        Built<SetSelectedRestaurant, SetSelectedRestaurantBuilder>,
        AppAction //
{
  factory SetSelectedRestaurant(String restaurantId) {
    return _$SetSelectedRestaurant((SetSelectedRestaurantBuilder b) => b.restaurantId = restaurantId);
  }

  SetSelectedRestaurant._();

  String get restaurantId;
}
