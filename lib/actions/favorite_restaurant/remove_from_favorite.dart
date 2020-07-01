library remove_from_favorite;

import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';

part 'remove_from_favorite.g.dart';

abstract class RemoveFromFavorite //
    implements
        Built<RemoveFromFavorite, RemoveFromFavoriteBuilder>,
        AppAction //
{
  factory RemoveFromFavorite(String favoriteRestaurantId) {
    return _$RemoveFromFavorite((RemoveFromFavoriteBuilder b) => b.favoriteRestaurantId = favoriteRestaurantId);
  }

  RemoveFromFavorite._();

  String get favoriteRestaurantId;
}

abstract class RemoveFromFavoriteSuccessful //
    implements
        Built<RemoveFromFavoriteSuccessful, RemoveFromFavoriteSuccessfulBuilder>,
        AppAction //
{
  factory RemoveFromFavoriteSuccessful(String favoriteRestaurantId) {
    return _$RemoveFromFavoriteSuccessful(
        (RemoveFromFavoriteSuccessfulBuilder b) => b.favoriteRestaurantId = favoriteRestaurantId);
  }

  RemoveFromFavoriteSuccessful._();

  String get favoriteRestaurantId;
}

abstract class RemoveFromFavoriteError //
    implements
        Built<RemoveFromFavoriteError, RemoveFromFavoriteErrorBuilder>,
        ErrorAction //
{
  factory RemoveFromFavoriteError(Object error) {
    return _$RemoveFromFavoriteError((RemoveFromFavoriteErrorBuilder b) => b.error = error);
  }

  RemoveFromFavoriteError._();

  @override
  Object get error;
}
