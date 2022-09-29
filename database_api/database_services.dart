import 'package:firebase_auth/firebase_auth.dart';

class DatabaseServices {
  final fireAuth = FirebaseAuth.instance;

// create new user with password and email
  Future<String> register(String email, password) async {
    await fireAuth.createUserWithEmailAndPassword(
        email: email, password: password);

    return 'Registration successful...';
  }

// function to login with username and password
  Future<String> login(String email, password) async {
    await fireAuth.signInWithEmailAndPassword(email: email, password: password);

    return fireAuth.currentUser!.uid;
  }

// function to logout of the system
  Future signOut() async {
    // check if there is logged in user before signout
    if (fireAuth.currentUser != null) {
      return await fireAuth.signOut();
    }
  }
}
