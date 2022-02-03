import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/data/restaurant_api.dart';
import 'package:uber_food/epics/app_epics.dart';
import 'package:uber_food/keys.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/reducer/reducer.dart';

Future<InitResult> initialize() async {
  final FirebaseApp app = await Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: app);
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final Client client = Client();

  final AuthApi authApi = AuthApi(auth: auth, firestore: firestore, googleSignIn: googleSignIn, location: Location());
  final RestaurantApi restaurantApi = RestaurantApi(
    url: Uri.parse(ApiKeys.zomatoUrl),
    zomatoKey: ApiKeys.zomatoApiKey,
    firestore: firestore,
    client: client,
  );

  final AppEpics epics = AppEpics(authApi: authApi, restaurantApi: restaurantApi);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(
        epics.epics,
      )
    ],
  )..dispatch(const InitializeApp());

  return InitResult._(store);
}

class InitResult {
  InitResult._(this.store);

  final Store<AppState> store;
}
