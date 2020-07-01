import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';

class FavoriteRestaurantApi {
  const FavoriteRestaurantApi({@required Firestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final Firestore _firestore;

  ///Add a restaurant to favorite.
  Future<FavoriteRestaurant> addToFavorite({
    @required String userId,
    @required Restaurant selectedRestaurant,
  }) async {
    final DocumentReference documentReference = _firestore.collection('favoriteRestaurants').document();

    final FavoriteRestaurant favoriteRestaurant = FavoriteRestaurant(
      userId: userId,
      restaurantData: selectedRestaurant,
      id: documentReference.documentID,
    );
    await documentReference.setData(favoriteRestaurant.json);
    return favoriteRestaurant;
  }

  ///Get the list with all favorite restaurants.
  Future<List<FavoriteRestaurant>> getFavoriteRestaurant(String userId) async {
    final QuerySnapshot documentSnapshot =
        await _firestore.collection('favoriteRestaurants').where('userId', isEqualTo: userId).getDocuments();
    print('DocumentSnapshot: ${documentSnapshot.documents}');
    return documentSnapshot.documents
        .map((DocumentSnapshot documentSnapshot) => FavoriteRestaurant.fromJson(documentSnapshot.data)).toList();
  }

  /// Delete a restaurant from favorite.
  Future<void> removeFromFavorite({@required String favoriteRestaurantId}) async {
    final DocumentReference documentRef = _firestore.document('favoriteRestaurants/${favoriteRestaurantId}');
    await documentRef.delete();
  }
}
