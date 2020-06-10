import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/actions/restaurants/get_recommended_restaurants.dart';
import 'package:uber_food/containers/recommended_restaurants_container.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            selectedItemColor: Theme.of(context).accentColor,
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
                  icon: const Icon(Icons.exit_to_app),
                  onPressed: () {
                    StoreProvider.of<AppState>(context).dispatch(LogOut());
                  })
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
                        margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                        elevation: 10,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
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
                      width: MediaQuery.of(context).size.width * 0.2,
                      alignment: AlignmentDirectional.center,
                      child: IconButton(
                        icon: const Icon(
                          Icons.edit_location,
                          size: 40,
                        ),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(GetRecommendedRestaurants());
                        },
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    child: RecommendedRestaurantsContainer(
                      builder: (BuildContext context, List<Restaurant> result) {
                        if (result != null) {
                          return ListView.builder(
                            itemCount: result.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Restaurant restaurant = result[index];
                              return Container(
                                child: ListTile(
                                  title: Text('${restaurant.name}'),
                                  subtitle: Text('${restaurant.location.localityVerbose}'),
                                ),
                              );
                            },
                          );
                        } else {
                          return const Center(
                            child: Text('Select your location first'),
                          );
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
        );
      },
    );
  }
}
