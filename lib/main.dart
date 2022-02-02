import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/data/favorite_restaurant_api.dart';
import 'package:uber_food/data/restaurant_api.dart';
import 'package:uber_food/data/reviews_api.dart';
import 'package:uber_food/epics/app_epics.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/home.dart';
import 'package:uber_food/presentation/home/favorite_restaurants_page.dart';
import 'package:uber_food/presentation/home/home_page.dart';
import 'package:uber_food/presentation/login_page.dart';
import 'package:uber_food/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const String zomatoUrl = 'https://developers.zomato.com/api/v2.1';
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final Client client = Client();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final AuthApi authApi =
      AuthApi(auth: FirebaseAuth.instance, firestore: firestore, googleSignIn: googleSignIn, location: Location());
  final RestaurantApi restaurantApi = RestaurantApi(url: Uri.parse(zomatoUrl), client: client);
  final ReviewsApi reviewsApi = ReviewsApi(firestore: firestore);
  final FavoriteRestaurantApi favoriteRestaurantApi = FavoriteRestaurantApi(firestore: firestore);
  final AppEpics epics = AppEpics(
    authApi: authApi,
    restaurantApi: restaurantApi,
    reviewsApi: reviewsApi,
    favoriteRestaurantApi: favoriteRestaurantApi,
  );
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(
        epics.epics,
      )
    ],
  )..dispatch(InitializeApp());
  runApp(UberFood(store: store));
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
