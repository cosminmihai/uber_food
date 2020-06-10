library get_recommended_restaurants;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';

part 'get_recommended_restaurants.g.dart';

abstract class GetRecommendedRestaurants //
    implements
        Built<GetRecommendedRestaurants, GetRecommendedRestaurantsBuilder>,
        AppAction //
{
  factory GetRecommendedRestaurants([void Function(GetRecommendedRestaurantsBuilder b) updates]) =
      _$GetRecommendedRestaurants;

  GetRecommendedRestaurants._();
}

abstract class GetRecommendedRestaurantsSuccessful //
    implements
        Built<GetRecommendedRestaurantsSuccessful, GetRecommendedRestaurantsSuccessfulBuilder>,
        AppAction //
{
  factory GetRecommendedRestaurantsSuccessful(List<Restaurant> recommendedRestaurants) {
    return _$GetRecommendedRestaurantsSuccessful((GetRecommendedRestaurantsSuccessfulBuilder b) {
      b.recommendedRestaurants = ListBuilder<Restaurant>(recommendedRestaurants);
    });
  }

  GetRecommendedRestaurantsSuccessful._();

  BuiltList<Restaurant> get recommendedRestaurants;
}

abstract class GetRecommendedRestaurantsError //
    implements
        Built<GetRecommendedRestaurantsError, GetRecommendedRestaurantsErrorBuilder>,
        ErrorAction //
{
  factory GetRecommendedRestaurantsError(Object error) {
    return _$GetRecommendedRestaurantsError((GetRecommendedRestaurantsErrorBuilder b) => b.error = error);
  }

  GetRecommendedRestaurantsError._();

  @override
  Object get error;
}
