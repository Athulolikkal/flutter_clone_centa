import 'package:centa_clone/gql/query/auth.dart';
import 'package:centa_clone/screens/signup_screen.dart';
import 'package:centa_clone/services/flutter_services.dart';
import 'package:flutter/material.dart';

class GoogleAppleLogin extends StatelessWidget {
  const GoogleAppleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: SizedBox(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Sign in with Google or Apple',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: ()async {
                 await FirebaseService.signInwithGoogle(context);
              },
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                    Size(MediaQuery.of(context).size.width * 0.9, 50)),
                foregroundColor: const MaterialStatePropertyAll(Colors.black),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.grey, width: 1)),
                elevation: MaterialStateProperty.all(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.g_mobiledata_outlined),
                  SizedBox(width: 8),
                  Text('Google'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
               
              },
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                    Size(MediaQuery.of(context).size.width * 0.9, 50)),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.grey, width: 1)),
                foregroundColor: const MaterialStatePropertyAll(Colors.black),
                elevation: MaterialStateProperty.all(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apple), // Replace with your Apple icon
                  SizedBox(width: 8), // Add space between icon and text
                  Text('Apple'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New to CENTA?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()),
                        );
                      },
                      child: const Text(
                        'Sign up here!',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

//   void userLogin ()async{
//    var userDetails = await GraphQlQueryAuthServices().getAllUsers();
//    print(userDetails);
  
// }
}
