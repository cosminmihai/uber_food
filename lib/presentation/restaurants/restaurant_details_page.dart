import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/containers/index.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/restaurants/restaurant_direction_route.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({required this.restaurantData, required this.indexHero});

  final Restaurant restaurantData;
  final int indexHero;

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  int rating = 0;

  void _onResult(dynamic action) {
    if (action is CreateRestaurantReviewSuccessful) {
      print('Review created');
    } else {
      print(action);
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController textController = TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Platform.isIOS ? const Icon(Icons.arrow_back_ios) : const Icon(Icons.arrow_back),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(const ListenForRestaurantReview.done());
              Navigator.pop(context);
            }),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          UserLocationContainer(
            builder: (BuildContext context, LatLng? userLocation) {
              final LatLng restaurantLoc =
                  LatLng(widget.restaurantData.location.latitude, widget.restaurantData.location.longitude);
              return TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<Widget>(
                    builder: (BuildContext context) {
                      return RestaurantDirectionRoute(
                        userLocation: userLocation!,
                        restaurantLocation: restaurantLoc,
                      );
                    },
                  ));
                },
                icon: const Icon(FontAwesomeIcons.mapMarkerAlt, color: Colors.white),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                label: const Text(
                  'Show Location',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          )
        ],
      ),
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
                    validator: (String? value) {
                      final String reviews = value ?? '';

                      if (reviews.length < 3) {
                        return 'Enter a review text please.';
                      } else if (rating == 0) {
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
                        ratingWidget: RatingWidget(
                          half: const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 2,
                          ),
                          full: const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 2,
                          ),
                          empty: const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 2,
                          ),
                        ),
                        onRatingUpdate: (double value) => setState(() => rating = value.toInt()),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          child: ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                            child: const Text('Cancel'),
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                StoreProvider.of<AppState>(context).dispatch(CreateRestaurantReview(
                                  text: textController.text,
                                  rating: rating,
                                  actionResult: _onResult,
                                ));
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
            },
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              if (widget.restaurantData.featuredPhoto != null)
                Hero(
                  tag: widget.indexHero,
                  child: ClipRRect(
                    child: Image(
                      color: const Color.fromRGBO(0, 0, 0, 0.4),
                      colorBlendMode: BlendMode.darken,
                      height: MediaQuery.of(context).size.width - 100,
                      width: MediaQuery.of(context).size.width,
                      image: NetworkImage(widget.restaurantData.featuredPhoto!),
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
                        child: Text(widget.restaurantData.name,
                            style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                    )),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Row(
                            children: <Widget>[
                              Text(
                                '${widget.restaurantData.usersRating.rating} ',
                                style: const TextStyle(color: Colors.white, fontSize: 16.0),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                ' (${widget.restaurantData.usersRating.votes})',
                                style: const TextStyle(color: Colors.white, fontSize: 16.0),
                              )
                            ],
                          ),
                        ),
                        UserContainer(
                          builder: (BuildContext context, AppUser? currentUser) {
                            return FavoriteRestaurantsContainer(
                              builder: (BuildContext context, List<FavoriteRestaurant> favoriteRestaurants) {
                                final List<FavoriteRestaurant> favorite = favoriteRestaurants.toList();
                                final FavoriteRestaurant? favoriteLike = favorite.firstWhereOrNull(
                                    (FavoriteRestaurant element) => element.data.id == widget.restaurantData.id);
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
                                        StoreProvider.of<AppState>(context).dispatch(AddToFavorite(
                                          userId: currentUser!.uid,
                                          selectedRestaurant: widget.restaurantData,
                                        ));
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
                Text(widget.restaurantData.location.address, style: const TextStyle(color: Colors.white)),
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
                    for (int i = 0; i < widget.restaurantData.cuisines.length; i++)
                      if (i == widget.restaurantData.cuisines.length - 1)
                        Text('${widget.restaurantData.cuisines[i]}', style: const TextStyle(color: Colors.white))
                      else
                        Text('${widget.restaurantData.cuisines[i]}, ', style: const TextStyle(color: Colors.white))
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: UsersContainer(
                builder: (BuildContext context, Map<String, AppUser> usersForReview) {
                  return ReviewsContainer(
                    builder: (BuildContext context, List<Review> review) {
                      return review.isNotEmpty
                          ? ListView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(8.0),
                              itemCount: review.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Review reviewInfo = review[index];
                                final AppUser? userForReview = usersForReview[reviewInfo.uid];
                                return usersForReview.isEmpty || userForReview?.photoUrl == null
                                    ? const ListTile(
                                        title: CircularProgressIndicator(),
                                      )
                                    : ListTile(
                                        visualDensity: VisualDensity.comfortable,
                                        leading: CircleAvatar(
                                          backgroundImage: NetworkImage('${userForReview!.photoUrl}'),
                                        ),
                                        title: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text('${userForReview.username}    '),
                                            Column(
                                              children: <Widget>[
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
                                                Row(
                                                  children: <Widget>[
                                                    for (int i = 0; i < reviewInfo.rating; i++)
                                                      const Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 12,
                                                      )
                                                  ],
                                                )
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
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
