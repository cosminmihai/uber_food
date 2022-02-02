import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uber_food/models/index.dart';

class FavoriteRestaurantApi {
  const FavoriteRestaurantApi({required FirebaseFirestore firestore}) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<FavoriteRestaurant> addToFavorite({
    required String userId,
    required Restaurant selectedRestaurant,
  }) async {
    final DocumentReference<Map<String, dynamic>> documentReference =
        _firestore.collection('favoriteRestaurants').doc();

    final FavoriteRestaurant favoriteRestaurant = FavoriteRestaurant(
      userId: userId,
      restaurantData: selectedRestaurant,
      id: documentReference.id,
    );
    await documentReference.set(favoriteRestaurant.json);
    return favoriteRestaurant;
  }

  Future<List<FavoriteRestaurant>> getFavoriteRestaurant(String userId) async {
    final QuerySnapshot<Map<String, dynamic>> documentSnapshot =
        await _firestore.collection('favoriteRestaurants').where('userId', isEqualTo: userId).get();
    return documentSnapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
      return FavoriteRestaurant.fromJson(documentSnapshot.data());
    }).toList();
  }

  Future<void> removeFromFavorite({required String favoriteRestaurantId}) async {
    final DocumentReference<Map<String, dynamic>> documentRef =
        _firestore.doc('favoriteRestaurants/${favoriteRestaurantId}');
    await documentRef.delete();
  }
}
