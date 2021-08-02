import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:latest_movies_state_management/src/models/index.dart';

class AuthAPI {
  AuthAPI({required FirebaseAuth auth, required FirebaseFirestore firestore})
      : _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> registerUser(final String email, final String password) async {
    final UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final AppUser user = AppUser((AppUserBuilder builder) {
      builder
        ..uid = result.user!.uid
        ..username = email.split('@').first
        ..email = email;
    });

    _firestore //
        .doc('users/${user.uid}')
        .set(user.json);

    return user;
  }
}
