import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';
import 'package:rxdart/rxdart.dart';

class ReviewsApi {
  const ReviewsApi({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  Future<RestaurantReview> createReview(
      {@required String uid, @required String restaurantId, @required String text, @required int rating}) async {
    final DocumentReference reference = _firestore.collection('reviews').document();
    final RestaurantReview review = RestaurantReview(
        id: reference.documentID, uid: uid, restaurantId: restaurantId, textReview: text, rating: rating);

    await reference.setData(review.json);
    return review;
  }

  Stream<List<RestaurantReview>> listenForReviews(String restaurantId) {
    return _firestore.collection('reviews').where('restaurantId', isEqualTo: restaurantId).snapshots().map(
        (QuerySnapshot snapshot) => snapshot.documents
            .map((DocumentSnapshot documentSnapshot) => RestaurantReview.fromJson(documentSnapshot.data))
            .toList());
  }
}
