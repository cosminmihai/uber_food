import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/restaurants/set_selected_restaurant.dart';
import 'package:uber_food/actions/reviews/listen_for_restaurant_reviews.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:uber_food/presentation/restaurants/restaurant_details_page.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    this.restaurantData,
  });

  final Restaurant restaurantData;

  @override
  Widget build(BuildContext context) {
    final String tag = restaurantData.featuredPhoto.toString();
    return GestureDetector(
      onTap: () {
        print('${restaurantData.name}');
        StoreProvider.of<AppState>(context).dispatch(SetSelectedRestaurant(restaurantData.id));
        StoreProvider.of<AppState>(context).dispatch(ListenForReviews());
        print(restaurantData.id);
        Navigator.push(
            context,
            MaterialPageRoute<Widget>(
                builder: (BuildContext context) => RestaurantDetails(restaurantData: restaurantData)));
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
            child: Hero(
              tag: tag,
              child: Image(
                // color: Color.fromRGBO(0, 0, 0, 0.4),
                // colorBlendMode: BlendMode.darken,
                height: 180.0,
                width: double.infinity,
                image: NetworkImage(restaurantData.featuredPhoto),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
            height: 180.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Color.fromRGBO(0, 0, 0, 0.65), Color.fromRGBO(0, 0, 0, 0.1)]),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
            height: 180.0,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(restaurantData.name,
                    style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 10.0),
                Expanded(
                  child: Text('${restaurantData.location.localityVerbose}'),
                ),
                Row(
                  children: <Widget>[
                    Text(restaurantData.userRating.rating.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 16.0)),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(' (${restaurantData.userRating.votes}) ${restaurantData.userRating.ratingText}',
                        style: const TextStyle(color: Colors.white, fontSize: 16.0)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
