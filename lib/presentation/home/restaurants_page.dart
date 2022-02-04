import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:place_picker/place_picker.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/containers/index.dart';
import 'package:uber_food/keys.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/api_dependencies.dart';
import 'package:uber_food/presentation/restaurants/restaurant_card_list.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await ApiDependencies.of(context).actions.whereType<GetUserLocationSuccessful>().first;
      StoreProvider.of<AppState>(context).dispatch(const GetRecommendedRestaurants.start());
    });
  }

  @override
  Widget build(BuildContext context) {
    return UserLocationContainer(
      builder: (BuildContext context, LatLng? userLocation) {
        return UserContainer(
          builder: (BuildContext context, AppUser? currentUser) {
            final AppUser user = currentUser!;

            return Scaffold(
              appBar: AppBar(
                title: Text('Welcome, ${user.username}!'),
                actions: <Widget>[
                  IconButton(
                    onPressed: () => StoreProvider.of<AppState>(context).dispatch(const Logout()),
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
                                  validator: (String? value) {
                                    final String query = value ?? '';
                                    if (query.length < 4) {
                                      return 'Please enter a longer restaurant location.';
                                    }

                                    return null;
                                  },
                                  onChanged: (String value) {
                                    // TODO(Cosmin): add search restaurants by name
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
                                final LocationResult? result = await Navigator.of(context).push<LocationResult>(
                                  MaterialPageRoute<LocationResult>(
                                    builder: (BuildContext context) => PlacePicker(
                                      ApiKeys.googleApi,
                                      displayLocation: userLocation,
                                    ),
                                  ),
                                );

                                if (result != null) {
                                  final LatLng? location = result.latLng;
                                  StoreProvider.of<AppState>(context)
                                    ..dispatch(SetUserLocation(location!))
                                    ..dispatch(const GetRecommendedRestaurants.start());
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
                              if (result.length > 1) {
                                return Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
                                      alignment: AlignmentDirectional.centerStart,
                                      child: const Text(
                                        'Locations:',
                                        style: TextStyle(fontSize: 24.0, color: Colors.white),
                                      ),
                                    ),
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
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              }

                              return const Center(
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
      },
    );
  }
}
