import 'package:centa_clone/screens/login_root.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpRegisterForm extends StatefulWidget {
  const SignUpRegisterForm({super.key});

  @override
  State<SignUpRegisterForm> createState() => _SignUpRegisterFormState();
}

class _SignUpRegisterFormState extends State<SignUpRegisterForm> {
  bool isChecked = false;
  bool passwordClosed = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _userRole = TextEditingController();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _referralCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //email
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 18),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  cursorColor: Colors.blue,
                  cursorErrorColor: Colors.red,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 142, 140, 140)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                  ),
                  
                ),
              ),

              //phone number
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Mobile number',
                    style: TextStyle(fontSize: 18),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: IntlPhoneField(
                  cursorColor: Colors.blue,
                  initialCountryCode: 'IN',
                  // cursorErrorColor: Colors.red,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Type your number",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 142, 140, 140),
                            width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 142, 140, 140),
                            width: 1)),
                  ),
                ),
              ),

              //wish
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Which of these would define you the best',
                    style: TextStyle(fontSize: 18),
                  )),

              DropdownButtonFormField(
                  decoration: InputDecoration(
                    hintText: 'Select role',
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 142, 140, 140)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      child: Text('Teacher'),
                      value: 'Teacher',
                    ),
                    DropdownMenuItem(
                      child: Text('Parent'),
                      value: 'Parent',
                    ),
                    DropdownMenuItem(
                      child: Text('School Org Leader'),
                      value: 'School Org Leader',
                    ),
                    DropdownMenuItem(
                      child: Text('Group Org Leader'),
                      value: 'Group Org Leader',
                    ),
                    DropdownMenuItem(
                      child: Text('Others'),
                      value: 'Others',
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                  }),

              //first name
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'First Name',
                    style: TextStyle(fontSize: 18),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  cursorColor: Colors.blue,
                  cursorErrorColor: Colors.red,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter first name",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 142, 140, 140)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                  ),
                ),
              ),
              //last name
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Last Name',
                    style: TextStyle(fontSize: 18),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  cursorColor: Colors.blue,
                  cursorErrorColor: Colors.red,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter last name",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 142, 140, 140)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                  ),
                ),
              ),

              //Password
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 18),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: passwordClosed ? true : false,
                  cursorColor: Colors.blue,
                  cursorErrorColor: Colors.red,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordClosed = !passwordClosed;
                        });
                      },
                      icon: Icon(
                        passwordClosed
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.blue, // Set the eye icon color
                      ),
                    ),
                    hintText: "Enter password",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 142, 140, 140)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                  ),
                ),
              ),
              //referral code
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Referral Code',
                    style: TextStyle(fontSize: 18),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  cursorColor: Colors.blue,
                  cursorErrorColor: Colors.red,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter Referral Code (Optional)",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 142, 140, 140)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 142, 140, 140),
                          width: 1.5),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      value: isChecked,
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      side: const BorderSide(
                        width: 3,
                      ),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text:
                                'By creating an account on the CENTA\u00AE app, you are agreeing to the\t',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print(
                                    'cliked to know more about policy,$isChecked');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //signup button
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
                    child: const Text('Sign up with email')),
              ),

              //bottom text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (cntx) => const LoginRoot()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: const Text(
                        'Sign in here',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
