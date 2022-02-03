import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/restaurants/restaurant_details_page.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({required this.restaurantData, required this.indexTag});

  final Restaurant restaurantData;
  final int indexTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        StoreProvider.of<AppState>(context)
          ..dispatch(SetSelectedRestaurant(restaurantData.id))
          ..dispatch(const ListenForRestaurantReview.start());
        Navigator.push(
          context,
          MaterialPageRoute<Widget>(
            builder: (BuildContext context) => RestaurantDetails(
              restaurantData: restaurantData,
              indexHero: indexTag,
            ),
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          if (restaurantData.featuredPhoto != null)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Hero(
                tag: indexTag,
                child: Image(
                  height: 180.0,
                  width: double.infinity,
                  image: NetworkImage(restaurantData.featuredPhoto!),
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
                Text(
                  restaurantData.name,
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: Text('${restaurantData.location.localityVerbose}'),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      restaurantData.usersRating.rating.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      ' (${restaurantData.usersRating.votes}) ${restaurantData.usersRating.ratingText}',
                      style: const TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
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
