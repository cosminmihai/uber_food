import 'package:flutter/material.dart';
import 'package:uber_food/presentation/home.dart';
import 'package:uber_food/presentation/home/favorite_restaurants_page.dart';
import 'package:uber_food/presentation/login_page.dart';

abstract class AppRoutes {
  static const String home = '/';
  static const String loginPage = '/loginPage';
  static const String favoriteRestaurants = '/favoriteRestaurants';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (_) => const Home(),
    loginPage: (_) => const LoginPage(),
    favoriteRestaurants: (_) => FavoriteRestaurantsPage(),
  };
}
