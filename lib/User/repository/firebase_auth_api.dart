import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  //Creo que el error es aqui en el GoogleAuthProvider.credential(idToken: null, accessToken: null) no sale la pantalla que pide las credenciales o algo esta mal
  Future<User?> signIn() async {
    User? user;

    if (kIsWeb) {
      GoogleAuthProvider authProvider = GoogleAuthProvider();

      try {
        final UserCredential userCredential =
        await _auth.signInWithPopup(authProvider);

        user = userCredential.user;
      } catch (e) {
        print(e);
      }
    } else {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
      await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        try {
          final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

          user = userCredential.user;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'account-exists-with-different-credential') {
            // ...
          } else if (e.code == 'invalid-credential') {
            // ...
          }
        } catch (e) {
          // ...
        }
      }
    }
    return user;
  }

  Future<void> signOut() async{
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

}