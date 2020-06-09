import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/containers/user_container.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return Scaffold(
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
        );
      },
    );
  }
}
