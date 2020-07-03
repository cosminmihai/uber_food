import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:uber_food/actions/favorite_restaurant/add_to_favorite.dart';
import 'package:uber_food/actions/favorite_restaurant/remove_from_favorite.dart';
import 'package:uber_food/actions/reviews/create_restaurant_review.dart';
import 'package:uber_food/containers/favorite_restaurants_container.dart';
import 'package:uber_food/containers/restaurant_reviews_container.dart';
import 'package:uber_food/containers/review_user_container.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/containers/user_position_container.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';
import 'package:uber_food/models/restaurants/favorite_restaurant.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:uber_food/presentation/restaurants/restaurant_direction_route.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({
    this.restaurantData,
    this.indexHero,
  });

  final Restaurant restaurantData;
  final int indexHero;

  ///Check if a review was created.
  void _onResult(dynamic action) {
    if (action is CreateRestaurantReviewSuccessful) {
      print('Works');
    } else {
      print(action);
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    int stars = 0;
    final TextEditingController textController = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<Widget>(
              context: context,
              builder: (BuildContext context) {
                return Form(
                  key: _formKey,
                  child: AlertDialog(
                    title: const Text('Add a review:'),
                    content: TextFormField(
                      validator: (String reviews) {
                        if (reviews.length < 3) {
                          return 'Enter a review text please.';
                        } else if (stars == 0) {
                          return 'Don\'t forget the stars.';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: 'Review',
                        border: OutlineInputBorder(),
                      ),
                      controller: textController,
                      maxLines: 4,
                    ),
                    actions: <Widget>[
                      Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: RatingBar(
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (BuildContext context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 2,
                            ),
                            onRatingUpdate: (double value) {
                              stars = value.toInt();
                              print(stars);
                            },
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              color: Colors.red,
                              child: const Text('Cancel'),
                            ),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Container(
                            child: RaisedButton(
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  StoreProvider.of<AppState>(context).dispatch(CreateRestaurantReview(
                                      text: textController.text, stars: stars, result: _onResult));
                                  Navigator.pop(context);
                                }
                              },
                              child: const Text('Submit'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              });
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          UserLocationContainer(
            builder: (BuildContext context, LatLng userLocation) {
              final LatLng restaurantLoc = LatLng(restaurantData.location.latitude, restaurantData.location.longitude);
              return FlatButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<Widget>(
                            builder: (BuildContext context) => RestaurantDirectionRoute(
                                userLocation: userLocation, restaurantLocation: restaurantLoc)));
                  },
                  icon: const Icon(FontAwesomeIcons.mapMarkerAlt, color: Colors.white),
                  color: Colors.transparent,
                  label: const Text('Show Location', style: TextStyle(color: Colors.white)));
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: indexHero,
                child: ClipRRect(
                  child: Image(
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                    colorBlendMode: BlendMode.darken,
                    height: MediaQuery.of(context).size.width - 100,
                    width: MediaQuery.of(context).size.width,
                    image: NetworkImage(restaurantData.featuredPhoto),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                height: MediaQuery.of(context).size.width - 100,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Center(
                          child: Text(restaurantData.name,
                              style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Row(
                            children: <Widget>[
                              Text(
                                '${restaurantData.userRating.rating} ',
                                style: const TextStyle(color: Colors.white, fontSize: 16.0),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                ' (${restaurantData.userRating.votes})',
                                style: const TextStyle(color: Colors.white, fontSize: 16.0),
                              )
                            ],
                          ),
                        ),
                        UserContainer(
                          builder: (BuildContext context, AppUser currentUser) {
                            return FavoriteRestaurantsContainer(
                              builder: (BuildContext context, List<FavoriteRestaurant> favoriteRestaurants) {
                                final List<FavoriteRestaurant> favorite = favoriteRestaurants.toList();
                                final FavoriteRestaurant favoriteLike = favorite.firstWhere(
                                    (FavoriteRestaurant element) => element.restaurantData.id == restaurantData.id,
                                    orElse: () => null);
                                return IconButton(
                                    icon: Icon(
                                      favoriteLike != null ? FontAwesomeIcons.solidHeart : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    onPressed: () async {
                                      if (favoriteLike != null) {
                                        StoreProvider.of<AppState>(context)
                                            .dispatch(RemoveFromFavorite(favoriteLike.id));
                                      } else if (favoriteLike == null) {
                                        StoreProvider.of<AppState>(context).dispatch(
                                            AddToFavorite(userId: currentUser.uid, selectedRestaurant: restaurantData));
                                      }
                                    });
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: const Divider()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Location:',
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                Text(restaurantData.location.address, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: const Divider()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('Cuisines:',
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    for (int i = 0; i < restaurantData.cuisines.length; i++)
                      if (i == restaurantData.cuisines.length - 1)
                        Text('${restaurantData.cuisines[i]}', style: const TextStyle(color: Colors.white))
                      else
                        Text('${restaurantData.cuisines[i]}, ', style: const TextStyle(color: Colors.white))
                  ],
                ),
              ],
            ),
          ),
          Container(padding: const EdgeInsets.symmetric(horizontal: 20.0), child: const Divider()),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Text('Reviews:', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold)),
          ),
          Expanded(child: ReviewUserContainer(
            builder: (BuildContext context, AppUser userReview) {
              return Container(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: RestaurantReviewsContainer(
                  builder: (BuildContext context, List<RestaurantReview> review) {
                    return review.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(8.0),
                            itemCount: review.length - 1,
                            itemBuilder: (BuildContext context, int index) {
                              final RestaurantReview reviewInfo = review[index];
                              //StoreProvider.of<AppState>(context).dispatch(SetSelectedReview(reviewInfo.uid));
                              return userReview != null
                                  ? ListTile(
                                      visualDensity: VisualDensity.comfortable,
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage('${userReview.photoUrl}'),
                                      ),
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text('${userReview.username}    '),
                                          Flexible(
                                            child: Row(
                                              children: <Widget>[
                                                for (int i = 0; i < reviewInfo.rating; i++)
                                                  const Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 12,
                                                  )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.timer,
                                                size: 16,
                                              ),
                                              Text(
                                                ' ${timeago.format(reviewInfo.createdAt)}',
                                                style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      subtitle: Text(
                                        reviewInfo.textReview,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    )
                                  : ListTile(
                                      visualDensity: VisualDensity.comfortable,
                                      leading: const CircleAvatar(
                                        child: Icon(Icons.person),
                                      ),
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              for (int i = 0; i < reviewInfo.rating; i++)
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 12,
                                                )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              const Icon(
                                                Icons.timer,
                                                size: 16,
                                              ),
                                              Text(
                                                ' ${timeago.format(reviewInfo.createdAt)}',
                                                style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      subtitle: Text(
                                        reviewInfo.textReview,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    );
                            },
                          )
                        : const Center(
                            child: Text('No reviews yet.'),
                          );
                  },
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
