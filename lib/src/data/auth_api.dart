part of datas;

class AuthAPI {
  AuthAPI({required FirebaseAuth auth, required FirebaseFirestore firestore})
      : _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> registerUser(final String email, final String password) async {
    UserCredential result;

    try {
      result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        final AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
        result = await _auth.signInWithCredential(credential);
      } else {
        rethrow;
      }
    }

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

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;

    if (user == null) {
      return null;
    }

    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await _firestore //
        .doc('users/${user.uid}')
        .get();

    return AppUser.fromJson(documentSnapshot.data());
  }

  Future<List<AppUser>> getAllUsers(List<String> uidList) async {
    final List<AppUser> usersList = <AppUser>[];

    for (final String uid in uidList) {
      final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore //
          .doc('users/$uid')
          .get();

      usersList.add(AppUser.fromJson(snapshot.data()));
    }

    return usersList;
  }

  Future<void> signOutCurrentUser() async {
    await _auth.signOut();
  }
}
