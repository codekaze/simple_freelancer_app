import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  login() async {
    await FirebaseAuth.instance.signInAnonymously();
  }
}
