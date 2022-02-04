import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:location/location.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/models/index.dart';

class AuthApi {
  AuthApi({
    required FirebaseAuth auth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
    required Location location,
    StreamController<User>? controller,
  })  : _googleSignIn = googleSignIn,
        _auth = auth,
        _firestore = firestore,
        _location = location,
        _controller = controller ?? StreamController<User>.broadcast();

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
  final Location _location;
  final StreamController<User> _controller;
  Stream<AppUser?>? _authState;

  Stream<AppUser?> get authState {
    return _authState ??= MergeStream<User?>(<Stream<User?>>[
      _auth.authStateChanges(),
      _auth.idTokenChanges(),
      _auth.userChanges(),
      _controller.stream,
    ])
        .startWith(null) //
        .switchMap(_ensureUser)
        .share();
  }

  Stream<AppUser?> _ensureUser(User? user) {
    if (user == null) {
      return Stream<AppUser?>.value(null);
    }

    return _firestore //
        .doc('users/${user.uid}')
        .get()
        .asStream()
        .asyncMap((DocumentSnapshot<Map<String, dynamic>> snapshot) async {
      late AppUser appUser;
      if (!snapshot.exists) {
        appUser = AppUser(
          uid: user.uid,
          email: user.email!,
          username: user.displayName!,
          photoUrl: user.photoURL,
        );
        await snapshot.reference.set(appUser.toJson());
      } else {
        appUser = AppUser.fromJson(snapshot.data()!);
      }

      return appUser;
    }).flatMap((AppUser user) {
      return _firestore
          .doc('users/${user.uid}')
          .snapshots()
          .map((DocumentSnapshot<Map<String, dynamic>> document) => AppUser.fromJson(document.data()!))
          .startWith(user);
    });
  }

  Future<AppUser> signInWithEmailAndPassword(String email, String password) async {
    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return (await _buildUser(result.user))!;
  }

  Future<AppUser> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
  }) async {
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return (await _buildUser(result.user, username))!;
  }

  Future<AppUser?> _buildUser(User? user, [String? username]) async {
    if (user == null) {
      return null;
    }
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${user.uid}').get();
    if (snapshot.exists) {
      return AppUser.fromJson(snapshot.data()!);
    }

    final AppUser appUser = AppUser(
      uid: user.uid,
      email: user.email!,
      username: user.displayName!,
      photoUrl: user.photoURL,
    );

    await _firestore.doc('users/${user.uid}').set(appUser.toJson());
    return appUser;
  }

  Future<AppUser> signInWithGoogle() async {
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

  Future<AppUser?> getCurrentUser() => _buildUser(_auth.currentUser);

  Future<LocationData> getCurrentUserPosition() => _location.getLocation();

  Future<AppUser> getUser(String uid) async {
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/$uid').get();
    return AppUser.fromJson(snapshot.data()!);
  }

  void notify() => _controller.add(_auth.currentUser!);
}

class UserCanceled extends Error {}
