import 'package:centa_clone/widgets/login/google_apple_login.dart';
import 'package:flutter/material.dart';

class LoginWithEmail extends StatelessWidget {
  const LoginWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Please enter the email address registered with CENTA\u00AE',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Type your email",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 142, 140, 140), width: 1)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 142, 140, 140), width: 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 73, 165, 240)),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      minimumSize: MaterialStatePropertyAll(
                          Size(MediaQuery.of(context).size.width * 0.9, 50)),
                      textStyle: const MaterialStatePropertyAll(TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400))),
                  child: const Text('Verify Email')),
            ),
            const Text(
              '(Recommended for existing CENTA\u00AE Community Members from outside of India)',
              style: TextStyle(
                  color: Color.fromARGB(255, 110, 115, 129),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            const GoogleAppleLogin()
          ],
        ),
      ),
    );
  }
}
