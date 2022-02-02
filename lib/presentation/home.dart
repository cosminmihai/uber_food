import 'package:flutter/material.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/auth/index.dart';
import 'package:uber_food/presentation/home/home_page.dart';
import 'package:uber_food/presentation/login_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return user != null ? const HomePage() : const LoginPage();
      },
    );
  }
}
