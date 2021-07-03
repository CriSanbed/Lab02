import 'authFirebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _authFirebase = AuthFirebase();

// llamo al metodo signIn de la clase AuthFirebase.dart
  Future<UserCredential> singInFirebase() => _authFirebase.singIn();
}
