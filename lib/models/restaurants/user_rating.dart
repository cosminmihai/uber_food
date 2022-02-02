part of restaurant_models;

abstract class UserRating implements Built<UserRating, UserRatingBuilder> {
  factory UserRating([void Function(UserRatingBuilder b) updates]) = _$UserRating;

  factory UserRating.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  UserRating._();

  @BuiltValueField(wireName: 'rating_text')
  String get ratingText;

  @BuiltValueField(wireName: 'rating_color')
  int get ratingColor;

  int get votes;

  @BuiltValueField(wireName: 'aggregate_rating')
  double get rating;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<UserRating> get serializer => _$userRatingSerializer;
}
