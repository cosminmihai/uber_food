import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';

class RestaurantApi {
  RestaurantApi({
    @required Client client,
    @required Uri url,
  })  : _url = url,
        _client = client;

  final Uri _url;
  final Client _client;

  Future<List<Restaurant>> getRecommendedRestaurants(Position position) async {
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

    final Response response =
        await _client.get(url, headers: <String, String>{'user-key': '607b2a11a39f519e80280dba3285b1f8'});

    return List<Map<String, dynamic>>.from(jsonDecode(response.body)['restaurants'])
        .map((Map<String, dynamic> json) => Restaurant.fromJson(
              <String, dynamic>{
                ...json['restaurant'],
                'cuisines': json['restaurant']['cuisines'].split(', '),
              },
            ))
        .toList();
  }
}
