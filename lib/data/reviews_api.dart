import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';

class ReviewsApi {
  const ReviewsApi({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  /// Create a reviews [Object] and add it to firestore.
  Future<RestaurantReview> createReview(
      {@required String uid, @required String restaurantId, @required String text, @required int rating}) async {
    final DocumentReference reference = _firestore.collection('reviews').document();
    final RestaurantReview review = RestaurantReview(
        id: reference.documentID, uid: uid, restaurantId: restaurantId, textReview: text, rating: rating);

    await reference.setData(review.json);
    return review;
  }

  /// Listen for new reviews to a specific restaurant.
  Stream<List<RestaurantReview>> listenForReviews(String restaurantId) {
    return _firestore.collection('reviews').where('restaurantId', isEqualTo: restaurantId).snapshots().map(
        (QuerySnapshot snapshot) => snapshot.documents
            .map((DocumentSnapshot documentSnapshot) => RestaurantReview.fromJson(documentSnapshot.data))
            .toList());
  }

  Stream<List<RestaurantReview>> listenForUserReviews(String userId) {
    return _firestore.collection('reviews').where('uid', isEqualTo: userId).snapshots().map((QuerySnapshot snapshot) =>
        snapshot.documents
            .map((DocumentSnapshot documentSnapshot) => RestaurantReview.fromJson(documentSnapshot.data))
            .toList());
  }
}
