part of restaurant_review_models;

abstract class ReviewsState implements Built<ReviewsState, ReviewsStateBuilder> {
  factory ReviewsState.initialState() {
    return _$ReviewsState((ReviewsStateBuilder b) {});
  }

  factory ReviewsState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  ReviewsState._();

  BuiltMap<String, RestaurantReview> get reviews;

  String? get selectedRestaurantId;

  String? get reviewUid;

  BuiltMap<String, RestaurantReview> get userReviews;

  BuiltMap<String, AppUser> get usersForReviews;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<ReviewsState> get serializer => _$reviewsStateSerializer;
}
