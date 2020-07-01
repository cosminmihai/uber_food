import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/presentation/home/main_page.dart';
import 'package:uber_food/presentation/home/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  Store<AppState> store;
  int _selectedIndex = 0;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.white,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: <Widget>[
          MainPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
