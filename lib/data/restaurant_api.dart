import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';
import 'package:uber_food/models/index.dart';

class RestaurantApi {
  RestaurantApi({
    required Client client,
    required Uri url,
    required FirebaseFirestore firestore,
    required this.zomatoKey,
  })  : _url = url,
        _client = client,
        _firestore = firestore;

  final Uri _url;
  final Client _client;
  final String zomatoKey;
  final FirebaseFirestore _firestore;

  Future<List<Restaurant>> getRecommendedRestaurants(LatLng position) async {
    final Uri url = Uri(
      scheme: _url.scheme,
      host: _url.host,
      pathSegments: <String>[..._url.pathSegments, 'search'],
      queryParameters: <String, dynamic>{
        'lat': '${position.latitude}',
        'lon': '${position.longitude}',
        'radius': '3000',
      },
    );
    final Response response = await _client.get(url, headers: <String, String>{'user-key': zomatoKey});

    return List<Map<String, dynamic>>.from(jsonDecode(response.body)['restaurants'])
        .map((Map<String, dynamic> json) {
          log('Restaurant.fromJson: ${jsonEncode(json)}');

          return Restaurant.fromJson(
              <String, dynamic>{
                ...json['restaurant'],
                'cuisines': json['restaurant']['cuisines'].split(', '),
                'phone_numbers': json['restaurant']['phone_numbers'].split(', '),
              },
            );
        })
        .toList();
  }

  Future<FavoriteRestaurant> addToFavorite({
    required String userId,
    required Restaurant restaurant,
  }) async {
    final String id = '$userId-${restaurant.id}';

    final FavoriteRestaurant favoriteRestaurant = FavoriteRestaurant(userId: userId, data: restaurant, id: id);
    await _firestore.doc('favoriteRestaurants/$id').set(favoriteRestaurant.toJson());
    return favoriteRestaurant;
  }

  Future<List<FavoriteRestaurant>> getFavoriteRestaurant(String userId) async {
    final QuerySnapshot<Map<String, dynamic>> documentSnapshot = await _firestore
        .collection('favoriteRestaurants') //
        .where('userId', isEqualTo: userId)
        .get();

    return documentSnapshot.docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> snap) => FavoriteRestaurant.fromJson(snap.data()))
        .toList();
  }

  Future<void> removeFromFavorite({
    required String userId,
    required String restaurantId,
  }) async {
    final DocumentReference<Map<String, dynamic>> documentRef =
        _firestore.doc('favoriteRestaurants/$userId-$restaurantId');
    await documentRef.delete();
  }

  Future<Review> createReview({
    required String uid,
    required String restaurantId,
    required String text,
    required int rating,
  }) async {
    final DocumentReference<Map<String, dynamic>> reference = _firestore.collection('reviews').doc();
    final Review review = Review(
      id: reference.id,
      uid: uid,
      restaurantId: restaurantId,
      textReview: text,
      rating: rating,
      createdAt: DateTime.now(),
    );

    await reference.set(review.toJson());
    return review;
  }

  Stream<List<Review>> listenForReviews(String restaurantId) {
    return _firestore
        .collection('reviews')
        .where('restaurantId', isEqualTo: restaurantId)
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs //
          .map((QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
        return Review.fromJson(documentSnapshot.data());
      }).toList();
    });
  }

  Stream<List<Review>> listenForUserReviews(String userId) {
    return _firestore
        .collection('reviews')
        .where('uid', isEqualTo: userId)
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> documentSnapshot) {
        return Review.fromJson(documentSnapshot.data());
      }).toList();
    });
  }
}
