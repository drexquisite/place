import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PlaceAppFirebaseUser {
  PlaceAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

PlaceAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PlaceAppFirebaseUser> placeAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PlaceAppFirebaseUser>(
            (user) => currentUser = PlaceAppFirebaseUser(user));
