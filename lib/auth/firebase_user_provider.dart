import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KPKAppFirebaseUser {
  KPKAppFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

KPKAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KPKAppFirebaseUser> kPKAppFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<KPKAppFirebaseUser>((user) => currentUser = KPKAppFirebaseUser(user));
