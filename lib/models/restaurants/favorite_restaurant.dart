part of restaurant_models;

@freezed
class FavoriteRestaurant with _$FavoriteRestaurant {
  const factory FavoriteRestaurant({
    required String id,
    required Restaurant data,
    required String userId,
  }) = _FavoriteRestaurant$;

  factory FavoriteRestaurant.fromJson(Map<dynamic, dynamic> json) =>
      _$FavoriteRestaurantFromJson(Map<String, dynamic>.from(json));
}
