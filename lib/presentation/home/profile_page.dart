import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/containers/favorite_restaurants_container.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/containers/user_reviews_container.dart';
import 'package:uber_food/models/index.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FavoriteRestaurantsContainer(
      builder: (BuildContext context, List<FavoriteRestaurant> favoriteRestaurants) {
        return UserContainer(
          builder: (BuildContext context, AppUser? user) {
            final AppUser currentUser = user!;

            return UserReviewsContainer(
              builder: (BuildContext context, List<Review> userReviews) {
                return Scaffold(
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: true,
                  ),
                  body: Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.33,
                              color: Colors.grey[700],
                            ),
                            Positioned(
                              top: 40,
                              right: 15,
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    const Text('Log Out'),
                                    IconButton(
                                      onPressed: () => StoreProvider.of<AppState>(context).dispatch(const Logout()),
                                      icon: const Icon(Icons.exit_to_app),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 55),
                              alignment: AlignmentDirectional.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 70,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0, 2.0),
                                        )
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundImage:
                                          currentUser.photoUrl != null ? NetworkImage(currentUser.photoUrl!) : null,
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      currentUser.username,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    height: 1,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      currentUser.email,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 26),
                                    padding: const EdgeInsets.all(10),
                                    child: Card(
                                      color: Colors.grey[300],
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Container(
                                                  padding: const EdgeInsets.only(top: 15, bottom: 5),
                                                  child: const Text('Favorite Restaurants:',
                                                      style: TextStyle(color: Colors.black))),
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 15),
                                                child: Text(
                                                  '${favoriteRestaurants.length}',
                                                  style: const TextStyle(color: Colors.black87, fontSize: 16),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Container(
                                                padding: const EdgeInsets.only(top: 15, bottom: 5),
                                                child: const Text(
                                                  'Reviews:',
                                                  style: TextStyle(color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 15),
                                                child: Text(
                                                  '${userReviews.length}',
                                                  style: const TextStyle(color: Colors.black87, fontSize: 16),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: <Widget>[
                                        Card(
                                          color: Colors.grey[300],
                                          child: Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.all(15),
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  alignment: Alignment.topLeft,
                                                  child: const Text(
                                                    'User Options:',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                const Divider(
                                                  color: Colors.black38,
                                                ),
                                                Container(
                                                  child: Column(
                                                    children: <Widget>[
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushNamed(context, '/FavoriteRestaurantsPage');
                                                        },
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            shape: BoxShape.rectangle,
                                                            border: Border.all(color: Colors.black),
                                                          ),
                                                          child: const ListTile(
                                                            leading: Icon(
                                                              Icons.restaurant,
                                                              color: Colors.black,
                                                            ),
                                                            contentPadding:
                                                                EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                                            title: Text(
                                                              'Show Favorite Restaurants',
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const Divider(),
                                                      GestureDetector(
                                                        onTap: () {},
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            border: Border.all(color: Colors.black),
                                                          ),
                                                          child: const ListTile(
                                                            contentPadding:
                                                                EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                                            leading: Icon(
                                                              Icons.rate_review,
                                                              color: Colors.black,
                                                            ),
                                                            title: Text(
                                                              'Show My Reviews',
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
