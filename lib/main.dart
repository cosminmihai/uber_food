import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/init/init.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/home.dart';
import 'package:uber_food/presentation/home/favorite_restaurants_page.dart';
import 'package:uber_food/presentation/home/home_page.dart';
import 'package:uber_food/presentation/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final InitResult result = await initialize();
  runApp(UberFood(store: result.store));
}

class UberFood extends StatelessWidget {
  const UberFood({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        home: const Home(),
        theme: ThemeData.dark(),
        routes: <String, WidgetBuilder>{
          '/loginPage': (BuildContext context) => const LoginPage(),
          '/homePage': (BuildContext context) => const HomePage(),
          '/FavoriteRestaurantsPage': (BuildContext context) => FavoriteRestaurantsPage(),
        },
      ),
    );
  }
}
