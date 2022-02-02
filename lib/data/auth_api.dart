import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:location/location.dart';
import 'package:uber_food/models/index.dart';

class AuthApi {
  AuthApi({
    required FirebaseAuth auth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
    required Location location,
  })  : _googleSignIn = googleSignIn,
        _auth = auth,
        _firestore = firestore,
        _location = location;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
  final Location _location;

  Future<AppUser> login(String email, String password) async {
    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return (await _buildUser(result.user))!;
  }

  Future<AppUser> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  }) async {
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return (await _buildUser(result.user, username))!;
  }

  Future<AppUser> createGoogleUser() async {
    final GoogleSignInAccount? account = await _googleSignIn.signIn();
    if (account == null) {
      throw UserCanceled();
    }

    final GoogleSignInAuthentication googleSignInAuthentication = await account.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);
    final UserCredential result = await _auth.signInWithCredential(credential);
    return (await _buildUser(result.user, result.user!.displayName))!;
  }

  Future<void> logOut() async => _auth.signOut();

  Future<AppUser?> getUser() {
    final User? user = _auth.currentUser;
    return _buildUser(user);
  }

  Future<AppUser?> _buildUser(User? user, [String? username]) async {
    if (user == null) {
      return null;
    }
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${user.uid}').get();
    if (snapshot.exists) {
      return AppUser.fromJson(snapshot.data()!);
    }

    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..username = username
        ..email = user.email!
        ..uid = user.uid
        ..photoUrl = user.photoURL!;
    });

    await _firestore.doc('users/${user.uid}').set(appUser.json);
    return appUser;
  }

  Future<LocationData> getCurrentUserPosition() async {
    return _location.getLocation();
  }

  Future<AppUser> getUserForReview(String userUid) async {
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/$userUid').get();
    return AppUser.fromJson(snapshot.data()!);
  }
}

class UserCanceled extends Error {}
