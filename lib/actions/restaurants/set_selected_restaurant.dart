part of restaurant_actions;

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
