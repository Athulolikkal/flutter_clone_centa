import 'package:centa_clone/screens/home_screen.dart';
import 'package:centa_clone/screens/root_screen.dart';
// import 'package:centa_clone/screens/root_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  static Future<String?> signInwithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var user_details = await _auth.signInWithCredential(credential);

      if (user_details.user != null) {
        Map<String, dynamic> userDetails = {
          'name': user_details.user?.displayName,
          'email': user_details.user?.email,
          'phoneNumber': user_details.user?.phoneNumber,
          'userProfile': user_details.user?.photoURL
        };
        await GetStorage().write('user', userDetails);
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (cntx) => RootScreen()),
          (Route<dynamic> route) => false,
        );
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      throw e;
    }
  }

  static Future<void> signOutFromGoogle() async {
    GetStorage().remove('user');
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
