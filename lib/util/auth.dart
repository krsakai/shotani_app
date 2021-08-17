import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;
  Future<User> signIn() async {
    UserCredential credential = await _auth.signInAnonymously();
    return credential.user;
  }
}