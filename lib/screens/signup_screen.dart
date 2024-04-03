import 'package:centa_clone/widgets/signup_screen/google_apple_signup.dart';
import 'package:centa_clone/widgets/signup_screen/register_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: const[
            GoogleAppleSignUp(),
            SignUpRegisterForm(),
          ],
        ),
      ),
    );
  }
}
