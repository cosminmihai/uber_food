import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/auth/app_user.dart';

class AuthApi {
  AuthApi({
    @required FirebaseAuth auth,
    @required Firestore firestore,
    @required GoogleSignIn googleSignIn,
    @required Location location,
  })  : assert(auth != null),
        assert(firestore != null),
        assert(location != null),
        _googleSignIn = googleSignIn,
        _auth = auth,
        _firestore = firestore,
        _location = location;

  final FirebaseAuth _auth;
  final Firestore _firestore;
  final GoogleSignIn _googleSignIn;
  final Location _location;

  ///Login the user.
  Future<AppUser> login(String email, String password) async {
    final AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _buildUser(result.user);
  }

  ///Create a firebase account with email and password.
  Future<AppUser> registerWithEmailAndPassword({
    @required String email,
    @required String password,
    @required String username,
  }) async {
    AuthResult result;
    if (email != null) {
      result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    return _buildUser(result.user, username);
  }

  /// Create a firebase user using an google account.
  Future<AppUser> createGoogleUser() async {
    final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);
    final AuthResult authResult = await _auth.signInWithCredential(credential);
    return _buildUser(authResult.user, authResult.user.displayName);
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }

  /// Returns the current login in user or null if there is no user logged in.
  Future<AppUser> getUser() async {
    final FirebaseUser user = await _auth.currentUser();
    return _buildUser(user);
  }

  ///Create a Firebase user and store the data in Firestore if not exists.
  Future<AppUser> _buildUser(FirebaseUser user, [String username]) async {
    if (user == null) {
      return null;
    }
    final DocumentSnapshot snapshot = await _firestore.document('users/${user.uid}').get();
    if (snapshot.exists) {
      return AppUser.fromJson(snapshot.data);
    }

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..username = username
        ..email = user.email
        ..uid = user.uid
        ..photoUrl = user.photoUrl;
    });

    await _firestore.document('users/${user.uid}').setData(appUser.json);
    return appUser;
  }

  /// Get the current position of the user.
  Future<LocationData> getCurrentUserPosition() async {
    return _location.getLocation();
  }
}
