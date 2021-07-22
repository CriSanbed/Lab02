import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/User/Repository/authRepository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?>? get authStatus => streamFirebase;

  Future<UserCredential> singIn() {
    return _authRepository.singInFirebase();
  }

  @override
  void dispose() {}
}
