part of restaurant_actions;

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
