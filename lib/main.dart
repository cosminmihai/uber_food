import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:uber_food/actions/initialize_app.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/epics/app_epics.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/presentation/home.dart';
import 'package:uber_food/presentation/home/home_page.dart';
import 'package:uber_food/presentation/login_page.dart';
import 'package:uber_food/reducer/reducer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final AuthApi authApi =
      AuthApi(auth: FirebaseAuth.instance, firestore: Firestore.instance, googleSignIn: googleSignIn);
  final AppEpics epics = AppEpics(authApi: authApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(
        epics.epics,
      )
    ],
  )..dispatch(InitializeApp());
  runApp(UberFood(store: store));
}

class UberFood extends StatelessWidget {
  const UberFood({Key key, this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const Home(),
        theme: ThemeData.dark(),
        routes: <String, WidgetBuilder>{
          '/loginPage': (BuildContext context) => const LoginPage(),
          '/homePage': (BuildContext context) => const HomePage(),
        },
      ),
    );
  }
}
