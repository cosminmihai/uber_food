library add_to_favorite;

import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';

part 'add_to_favorite.g.dart';

abstract class AddToFavorite //
    implements
        Built<AddToFavorite, AddToFavoriteBuilder>,
        AppAction //
{
  factory AddToFavorite({@required String userId, @required Restaurant selectedRestaurant}) {
    return _$AddToFavorite((AddToFavoriteBuilder b) {
      b
        ..userId = userId
        ..selectedRestaurant = selectedRestaurant.toBuilder();
    });
  }

  AddToFavorite._();

  String get userId;

  Restaurant get selectedRestaurant;
}

abstract class AddToFavoriteSuccessful //
    implements
        Built<AddToFavoriteSuccessful, AddToFavoriteSuccessfulBuilder>,
        AppAction //
{
  factory AddToFavoriteSuccessful(FavoriteRestaurant favoriteRestaurant) {
    return _$AddToFavoriteSuccessful(
        (AddToFavoriteSuccessfulBuilder b) => b.favoriteRestaurant = favoriteRestaurant.toBuilder());
  }

  AddToFavoriteSuccessful._();

  FavoriteRestaurant get favoriteRestaurant;
}

abstract class AddToFavoriteError //
    implements
        Built<AddToFavoriteError, AddToFavoriteErrorBuilder>,
        ErrorAction //
{
  factory AddToFavoriteError(Object error) {
    return _$AddToFavoriteError((AddToFavoriteErrorBuilder b) => b.error = error);
  }

  AddToFavoriteError._();

  @override
  Object get error;
}
