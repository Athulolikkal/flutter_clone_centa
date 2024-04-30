import 'package:centa_clone/gql/query/auth.dart';
import 'package:centa_clone/gql/query/user.dart';
import 'package:centa_clone/screens/root_screen.dart';
import 'package:centa_clone/widgets/loading_modal.dart';
// import 'package:centa_clone/widgets/loading_modal.dart';
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

      if (googleSignInAccount != null) {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return const AlertModal();
            });
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
          //check is user in DB?
          final userIsPresent = await GraphQlQueryUserServices()
              .findUserWithEmail(email: userDetails['email']);
          //if user is not registred
          if (userIsPresent['status'] == false) {
            String userName = userDetails['name'];
            List nameParts = userName.split(" ");
            String firstName = nameParts[0].toUpperCase();
            String lastName = nameParts.sublist(1).join(" ").toUpperCase();

            final registerUser = await GraphQlQueryAuthServices().registerUser(
              firstName: firstName,
              lastName: lastName,
              email: userDetails['email'],
              phoneNumber: userDetails['phoneNumber'] != null
                  ? userDetails['phoneNumber']
                  : null,
              googleSignedIn: true,
              profileImage: userDetails['userProfile'] != null
                  ? userDetails['userProfile']
                  : null,
            );

            await GetStorage().write('user', userDetails);
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (cntx) => const RootScreen()),
              (Route<dynamic> route) => false,
            );
          } else {
            if (userIsPresent['userInfo']['google_apple_signd'] == true) {
              await GetStorage().write('user', userDetails);
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (cntx) => const RootScreen()),
                (Route<dynamic> route) => false,
              );
            } else {
              Navigator.of(context).pop();
              signOutFromGoogle();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Something went wrong please try with another email'),
                  margin: EdgeInsets.all(10),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Color.fromARGB(255, 26, 25, 25),
                ));
            }
          }
        }
       
        // await GetStorage().write('user', userDetails);
        // Navigator.of(context).pushAndRemoveUntil(
        //   MaterialPageRoute(builder: (cntx) => const RootScreen()),
        //   (Route<dynamic> route) => false,
        // );
      }
      // Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      // Navigator.of(context).pop();
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
