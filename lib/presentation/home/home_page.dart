import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/auth/get_current_user_location.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/actions/restaurants/get_recommended_restaurants.dart';
import 'package:uber_food/components/restaurant_card_list.dart';
import 'package:uber_food/containers/recommended_restaurants_container.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final int _selectedIndex = 0;

  Future<void> _onResult(dynamic action) async {
    print('Blablablabla');
    if (action is GetCurrentUserLocationSuccessful) {
      await Navigator.pushNamed(context, '/selectLocationPage');
    } else if (action is GetCurrentUserLocationError) {
      print('Action is: $action');
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Please allow the app to use your location.'),
              content: Text(action.error.toString()),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.lightBlue,
            unselectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
            ],
          ),
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
                          backgroundColor: Colors.blue,
                          onPressed: () async {
                            final LocationResult result = await showLocationPicker(
                              context,
                              'AIzaSyB3hiE3QJMshFyfMNxU7uSTR_Fx22BFXP4',
                              myLocationButtonEnabled: true,
                              layersButtonEnabled: true,
                            );
                            //StoreProvider.of<AppState>(context).dispatch(GetCurrentUserLocation(_onResult));
                            if (result != null) {
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
                  const SizedBox(height: 8.0),
                  Expanded(
                    child: Container(
                      child: RecommendedRestaurantsContainer(
                        builder: (BuildContext context, List<Restaurant> result) {
                          return result != null
                              ? ListView.builder(
                                  itemCount: result.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final Restaurant restaurant = result[index];
                                    return Container(child: RestaurantCard(restaurantData: restaurant));
                                  },
                                )
                              : const Center(
                                  child: Text('Select your location first'),
                                );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
