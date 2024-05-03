import 'package:bcrypt/bcrypt.dart';
import 'package:centa_clone/gql/query/user.dart';
import 'package:centa_clone/screens/root_screen.dart';
import 'package:centa_clone/widgets/loading_modal.dart';
import 'package:centa_clone/widgets/login/google_apple_login.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  final _formKey = GlobalKey<FormState>();
  bool passwordClosed = true;
  String? _email = '';
  String? _password = '';
  bool openPasswordSection = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
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
              //email
              TextFormField(
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  final emailRegex =
                      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                onChanged: (value) {
                  _email = value;
                },
              ),
              //password
              Visibility(
                visible: openPasswordSection,
                child: const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ),

              Visibility(
                visible: openPasswordSection,
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
                      borderRadius: BorderRadius.circular(20),
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    String trimmedValue = value.trim();
                    if (trimmedValue.length <= 4 || trimmedValue.length >= 20) {
                      return 'Please enter a valid password';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _password = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (!openPasswordSection) {
                        verifyEmail();
                      } else {
                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return const AlertModal();
                            });
                        signWithEmail(context);
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 73, 165, 240)),
                        foregroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                        minimumSize: MaterialStatePropertyAll(
                            Size(MediaQuery.of(context).size.width * 0.9, 50)),
                        textStyle: const MaterialStatePropertyAll(TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400))),
                    child: Text(!openPasswordSection
                        ? 'Verify Email'
                        : 'Sign in with email')),
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
      ),
    );
  }

  void verifyEmail() async {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    bool isMatched = emailRegex.hasMatch(_email!);
    if (isMatched) {
      setState(() {
        openPasswordSection = true;
      });
    } else {
      setState(() {
        openPasswordSection = false;
      });
    }
  }

  void signWithEmail(BuildContext context) async {
    try {
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      bool isMatched = emailRegex.hasMatch(_email!);
      if (isMatched) {
        print(_password);
        if (_password!.isNotEmpty &&
            _password != null &&
            _password != '' &&
            _password!.length > 4 &&
            _password!.length < 20) {
          String trimmedValue = _password!.trim();
          if (trimmedValue.length > 4 && trimmedValue.length < 20) {
            var isUserIsThere = await GraphQlQueryUserServices()
                .findUserWithEmail(email: _email);

            if (isUserIsThere['error'] == false) {
              Map userInfo = isUserIsThere['userInfo'];

              String? dbPass = userInfo['password'];
              String email = userInfo['email'];
              String firstName = userInfo['first_name'];
              String lastName = userInfo['last_name'];
              //checking password is present in db?

              if (dbPass != null) {
                final bool checkPassword = BCrypt.checkpw(_password!, dbPass);

                //if password is correct
                if (checkPassword) {
                  print(checkPassword);
                  Map<String, dynamic> userDetails = {
                    'name':
                        firstName.toUpperCase() + ' ' + lastName.toUpperCase(),
                    'email': email,
                  };

                  //storing details to acccess every where in the project
                  await GetStorage().write('user', userDetails);
                  //navigating to the root screen
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (cntx) => const RootScreen()),
                    (Route<dynamic> route) => false,
                  );
                } else {
                  //if password is not correct
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Invalid password or email'),
                    margin: EdgeInsets.all(10),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Color.fromARGB(255, 26, 25, 25),
                  ));
                }
              } else {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'Something went wrong please try again with another email'),
                  margin: EdgeInsets.all(10),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Color.fromARGB(255, 26, 25, 25),
                ));
              }
            } else {
              //email is not presented in DB
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Invalid password or email'),
                margin: EdgeInsets.all(10),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Color.fromARGB(255, 26, 25, 25),
              ));
            }
          }
        } else {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Please enter the valid password'),
            margin: EdgeInsets.all(10),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Color.fromARGB(255, 26, 25, 25),
          ));
        }
      } else {
        setState(() {
          openPasswordSection = false;
        });
      }
    } catch (err) {
      throw Exception(err);
    }
  }
}
