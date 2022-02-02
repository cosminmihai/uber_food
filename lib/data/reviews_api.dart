import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uber_food/models/index.dart';

class ReviewsApi {
  const ReviewsApi({required FirebaseFirestore firestore}) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<RestaurantReview> createReview({
    required String uid,
    required String restaurantId,
    required String text,
    required int rating,
  }) async {
    final DocumentReference<Map<String, dynamic>> reference = _firestore.collection('reviews').doc();
    final RestaurantReview review =
        RestaurantReview(id: reference.id, uid: uid, restaurantId: restaurantId, textReview: text, rating: rating);

    await reference.set(review.json);
    return review;
  }

  Stream<List<RestaurantReview>> listenForReviews(String restaurantId) {
    return _firestore
        .collection('reviews')
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs //
          .map((QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
        return RestaurantReview.fromJson(documentSnapshot.data());
      }).toList();
    });
  }

  Stream<List<RestaurantReview>> listenForUserReviews(String userId) {
    return _firestore
        .collection('reviews')
        .where('uid', isEqualTo: userId)
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
        return RestaurantReview.fromJson(documentSnapshot.data());
      }).toList();
    });
  }
}
