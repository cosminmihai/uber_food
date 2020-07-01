library get_favorite_restaurants;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';

part 'get_favorite_restaurants.g.dart';

abstract class GetFavoriteRestaurants //
    implements
        Built<GetFavoriteRestaurants, GetFavoriteRestaurantsBuilder>,
        AppAction //
{
  factory GetFavoriteRestaurants(String userId) {
    return _$GetFavoriteRestaurants((GetFavoriteRestaurantsBuilder b) => b.userId = userId);
  }

  GetFavoriteRestaurants._();

  String get userId;
}

abstract class GetFavoriteRestaurantsSuccessful //
    implements
        Built<GetFavoriteRestaurantsSuccessful, GetFavoriteRestaurantsSuccessfulBuilder>,
        AppAction //
{
  factory GetFavoriteRestaurantsSuccessful(List<FavoriteRestaurant> favoriteRestaurants) {
    return _$GetFavoriteRestaurantsSuccessful((GetFavoriteRestaurantsSuccessfulBuilder b) =>
        b.favoriteRestaurants = ListBuilder<FavoriteRestaurant>(favoriteRestaurants));
  }

  GetFavoriteRestaurantsSuccessful._();

  BuiltList<FavoriteRestaurant> get favoriteRestaurants;
}

abstract class GetFavoriteRestaurantsError //
    implements
        Built<GetFavoriteRestaurantsError, GetFavoriteRestaurantsErrorBuilder>,
        ErrorAction //
{
  factory GetFavoriteRestaurantsError(Object error) {
    return _$GetFavoriteRestaurantsError((GetFavoriteRestaurantsErrorBuilder b) => b.error = error);
  }

  GetFavoriteRestaurantsError._();

  @override
  Object get error;
}
