part of restaurant_models;

@freezed
class UsersRating with _$UsersRating {
  const factory UsersRating({
    required int votes,
    @JsonKey(name: 'rating_text') required String ratingText,
    @DoubleConverter() @JsonKey(name: 'aggregate_rating') required double rating,
  }) = _UsersRating$;

  factory UsersRating.fromJson(Map<dynamic, dynamic> json) => _$UsersRatingFromJson(Map<String, dynamic>.from(json));
}
