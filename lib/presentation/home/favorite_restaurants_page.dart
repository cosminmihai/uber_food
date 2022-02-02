import 'package:flutter/material.dart';
import 'package:uber_food/containers/favorite_restaurants_container.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/restaurants/restaurant_card_list.dart';

class FavoriteRestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Favorite Restaurants'),
          ),
          body: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: FavoriteRestaurantsContainer(
                        builder: (BuildContext context, List<FavoriteRestaurant> favoriteRestaurant) {
                          return favoriteRestaurant.length > 1
                              ? Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: ListView.builder(
                                          physics: const BouncingScrollPhysics(),
                                          itemCount: favoriteRestaurant.length,
                                          itemBuilder: (BuildContext context, int index) {
                                            final FavoriteRestaurant restaurant = favoriteRestaurant[index];
                                            return Container(
                                                child: RestaurantCard(
                                              restaurantData: restaurant.restaurantData,
                                              indexTag: index,
                                            ));
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : const Center(
                                  child: Text(
                                    'Select your location first',
                                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                  ),
                                );
                        },
                      ),
                    ),
                  ),
                  const Divider(
                    height: 6.0,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
