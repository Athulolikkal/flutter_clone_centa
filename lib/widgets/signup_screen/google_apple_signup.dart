import 'package:centa_clone/services/flutter_services.dart';
import 'package:flutter/material.dart';

class GoogleAppleSignUp extends StatelessWidget {
  const GoogleAppleSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Image.asset(
            'assets/images/centa_logo.png',
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          // Text('1 million+ Teachers | 140+ Countries')
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 19.0, color: Colors.black),
              children: [
                TextSpan(
                  text: '1 million+',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' Teachers',
                ),
                TextSpan(
                  text: ' | 140+ ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Countries',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'We are excited to support you in your professional development journey! Enter your details to get started',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // print('google signup called');
                    FirebaseService.signInwithGoogle(context);
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.4, 50)),
                    foregroundColor: const MaterialStatePropertyAll(Colors.black),
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 208, 206, 206), width: 1.5)),
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
                OutlinedButton(
                  onPressed: () {
                    // FirebaseService.signOutFromGoogle();
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(
                        Size(MediaQuery.of(context).size.width * 0.4, 50)),
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 208, 206, 206), width: 1.5)),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
