import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:uber_food/actions/auth/get_current_user_location.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/actions/restaurants/filter_restaurants.dart';
import 'package:uber_food/actions/restaurants/get_recommended_restaurants.dart';
import 'package:uber_food/containers/recommended_restaurants_container.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:uber_food/presentation/restaurants/restaurant_card_list.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Welcome, ${user.username}!'),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(LogOut());
                },
                icon: const Icon(Icons.exit_to_app),
              )
            ],
          ),
          body: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Card(
                          margin: const EdgeInsets.only(left: 15, top: 15),
                          elevation: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                          child: Form(
                            key: _formKey,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: const InputDecoration(
                                focusColor: Colors.black,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black26,
                                ),
                                hintText: 'Search a restaurant',
                                hintStyle: TextStyle(color: Colors.black26),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
                              ),
                              controller: searchController,
                              validator: (String value) {
                                if (!(value.length > 4)) {
                                  return 'Please enter a longer restaurant location.';
                                }
                                return null;
                              },
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context).dispatch(FilterRestaurant(value));
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: MediaQuery.of(context).size.width * 0.2,
                        alignment: AlignmentDirectional.center,
                        margin: const EdgeInsets.only(top: 15),
                        child: FloatingActionButton(
                          elevation: 16,
                          backgroundColor: Colors.blue,
                          onPressed: () async {
                            final LocationResult result = await showLocationPicker(
                              context,
                              'AIzaSyB3hiE3QJMshFyfMNxU7uSTR_Fx22BFXP4',
                              myLocationButtonEnabled: true,
                              layersButtonEnabled: true,
                            );
                            if (result != null) {
                              StoreProvider.of<AppState>(context).dispatch(GetCurrentUserLocation(result.latLng));
                              StoreProvider.of<AppState>(context)
                                  .dispatch(GetRecommendedRestaurants(locationData: result.latLng));
                            }
                          },
                          child: const Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  Expanded(
                    child: Container(
                      child: RecommendedRestaurantsContainer(
                        builder: (BuildContext context, List<Restaurant> result) {
                          return result.length > 1
                              ? Column(
                                  children: <Widget>[
                                    Container(
                                        padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
                                        alignment: AlignmentDirectional.centerStart,
                                        child: const Text(
                                          'Locations:',
                                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                                        )),
                                    Expanded(
                                      child: Container(
                                        child: ListView.builder(
                                          physics: const BouncingScrollPhysics(),
                                          itemCount: result.length,
                                          itemBuilder: (BuildContext context, int index) {
                                            final Restaurant restaurant = result[index];
                                            return Container(
                                                child: RestaurantCard(
                                              restaurantData: restaurant,
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
