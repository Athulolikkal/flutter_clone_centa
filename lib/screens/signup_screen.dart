import 'package:centa_clone/widgets/signup_screen/google_apple_signup.dart';
import 'package:centa_clone/widgets/signup_screen/register_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor:Colors.transparent ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: const [
            GoogleAppleSignUp(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 206, 204, 204),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      ' Or ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(255, 206, 204, 204),
                    ),
                  ),
                ],
              ),
            ),
            SignUpRegisterForm(),
          ],
        ),
      ),
    );
  }
}
