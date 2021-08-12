// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips/User/repository/auth_repository.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  //Casos de uso
  //1. SingIn a la app con Google
  Future<UserCredential> signIn(){
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {

  }
}