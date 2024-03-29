import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/home/restaurants_page.dart';
import 'package:uber_food/presentation/home/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({this.store});

  final Store<AppState>? store;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  late PageController pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return UserContainer(
      builder: (BuildContext context, AppUser? currentUser) {
        return Scaffold(
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: <Widget>[
              RestaurantsPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
                pageController.jumpToPage(index);
                if (index == 1) {
                  store.dispatch(const ListenForUserReview.start());
                } else if (index != 1) {
                  store.dispatch(const ListenForUserReview.done());
                }
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
