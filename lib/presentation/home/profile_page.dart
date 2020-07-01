import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uber_food/containers/favorite_restaurants_container.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/containers/user_reviews_container.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FavoriteRestaurantsContainer(
      builder: (BuildContext context, List<FavoriteRestaurant> favoriteRestaurants) {
        return UserContainer(
          builder: (BuildContext context, AppUser currentUser) {
            return UserReviewsContainer(
              builder: (BuildContext context, List<RestaurantReview> userReviews) {
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
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.33,
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
                                      onPressed: () {
                                        print('Log out');
                                      },
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
                                    decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 70,
                                        spreadRadius: 0.0,
                                        offset: Offset(2.0, 2.0),
                                      )
                                    ]),
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundImage: currentUser != null
                                          ? NetworkImage(currentUser.photoUrl)
                                          : Image.asset('res/profile_logo.png'),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width * 0.9,
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
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.pushNamed(context, '/FavoriteRestaurantsPage');
                                            },
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                    padding: const EdgeInsets.only(top: 15, bottom: 5),
                                                    child: const Text('Favorite Restaurants:',
                                                        style: TextStyle(color: Colors.black))),
                                                Container(
                                                    padding: const EdgeInsets.only(bottom: 15),
                                                    child: Text('${favoriteRestaurants.length}',
                                                        style: const TextStyle(color: Colors.black87, fontSize: 16))),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Container(
                                                  padding: const EdgeInsets.only(top: 15, bottom: 5),
                                                  child:
                                                  const Text('Reviews:', style: TextStyle(color: Colors.black))),
                                              Container(
                                                  padding: const EdgeInsets.only(bottom: 15),
                                                  child: Text('${userReviews.length}',
                                                      style: const TextStyle(color: Colors.black87, fontSize: 16))),
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
                                                    'User Settings:',
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
                                                      children: const <Widget>[
                                                        ListTile(
                                                          contentPadding: EdgeInsets.symmetric(
                                                              horizontal: 12, vertical: 4),
                                                          leading: Icon(Icons.notifications, color: Colors.black,),
                                                          title: Text('Show Notifications',style: TextStyle(
                                                            color:  Colors.black,
                                                          ),),
                                                          subtitle: Text('On', style: TextStyle(
                                                            color:  Colors.black54,
                                                          ),),
                                                          trailing: CupertinoSwitch(value: true , onChanged: null),
                                                        ),
                                                        ListTile(
                                                          contentPadding: EdgeInsets.symmetric(
                                                              horizontal: 12, vertical: 4),
                                                          leading: Icon(Icons.notifications, color: Colors.black,),
                                                          title: Text('Show Notifications',style: TextStyle(
                                                            color:  Colors.black,
                                                          ),),
                                                          subtitle: Text('On', style: TextStyle(
                                                            color:  Colors.black54,
                                                          ),),
                                                          trailing: CupertinoSwitch(value: true , onChanged: null),
                                                        ),
                                                        ListTile(
                                                          contentPadding: EdgeInsets.symmetric(
                                                              horizontal: 12, vertical: 4),
                                                          leading: Icon(Icons.notifications, color: Colors.black,),
                                                          title: Text('Show Notifications',style: TextStyle(
                                                            color:  Colors.black,
                                                          ),),
                                                          subtitle: Text('On', style: TextStyle(
                                                            color:  Colors.black54,
                                                          ),),
                                                          trailing: CupertinoSwitch(value: true , onChanged: null),
                                                        ),
                                                      ],
                                                    ))
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
