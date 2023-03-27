import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CsProjectFirebaseUser {
  CsProjectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CsProjectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CsProjectFirebaseUser> csProjectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CsProjectFirebaseUser>(
      (user) {
        currentUser = CsProjectFirebaseUser(user);
        return currentUser!;
      },
    );
