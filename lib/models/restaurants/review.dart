part of restaurant_models;

@freezed
class Review with _$Review implements Comparable<Review> {
  const factory Review({
    required String id,
    required String uid,
    required String restaurantId,
    required String textReview,
    required DateTime createdAt,
    required int rating,
  }) = _Review$;

  const Review._();

  factory Review.fromJson(Map<dynamic, dynamic> json) => _$ReviewFromJson(Map<String, dynamic>.from(json));

  @override
  int compareTo(Review review) {
    return createdAt.compareTo(review.createdAt);
  }
}
