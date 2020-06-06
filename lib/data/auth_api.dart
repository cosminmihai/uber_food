import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/auth/app_user.dart';

class AuthApi {
  AuthApi({@required FirebaseAuth auth, @required Firestore firestore})
      : assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final Firestore _firestore;
  final GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();

  ///Login the user.
  Future<AppUser> login(String email, String password) async {
    final AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _buildUser(result.user);
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
    assert(username != null);
    final AppUser appUser = AppUser((AppUserBuilder b) {
      b
        ..username = username
        ..email = user.email
        ..uid = user.uid;
    });
    await _firestore.document('users/${user.uid}').setData(appUser.json);
    return appUser;
  }

  ///Create a firebase account with email and password.
  Future<AppUser> registerWithEmailAndPassword(String email, String password, [String username]) async {
    AuthResult result;
    if (email != null) {
      result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    return _buildUser(result.user, username);
  }

  Future<void> createGoogleUser() async {}
}
