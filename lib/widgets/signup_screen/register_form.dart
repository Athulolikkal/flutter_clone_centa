import 'package:centa_clone/gql/query/auth.dart';
import 'package:centa_clone/gql/query/user.dart';
import 'package:centa_clone/screens/login_root.dart';
import 'package:centa_clone/screens/root_screen.dart';
import 'package:centa_clone/services/generate_referralcode.dart';
import 'package:centa_clone/widgets/loading_modal.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
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
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _referralCode = TextEditingController();
  bool loading = false;
  var userRole = null;

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
                  controller: _emailController,
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
                  controller: _mobileNumberController,
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
                  validator: (value) {
                    if (value == null || value.isValidNumber()) {
                      return 'Please enter your phone number';
                    }

                    return null;
                  },
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
                        color: Color.fromARGB(255, 142, 140, 140), width: 1.5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 142, 140, 140), width: 1.5),
                  ),
                ),
                items: const [
                  DropdownMenuItem(
                    value: 'Teacher',
                    child: Text('Teacher'),
                  ),
                  DropdownMenuItem(
                    value: 'Parent',
                    child: Text('Parent'),
                  ),
                  DropdownMenuItem(
                    value: 'School Org Leader',
                    child: Text('School Org Leader'),
                  ),
                  DropdownMenuItem(
                    value: 'Group Org Leader',
                    child: Text('Group Org Leader'),
                  ),
                  DropdownMenuItem(
                    value: 'Others',
                    child: Text('Others'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    userRole = value;
                  });
                },
                validator: (value) {
                  if (userRole == null || userRole.isEmpty) {
                    print(userRole);
                    return 'Please select an role';
                  }
                  return null;
                },
              ),

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
                  controller: _firstName,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    String trimmedValue = value.trim();
                    if (trimmedValue.length <= 1) {
                      return 'Please enter a valid name';
                    }
                    return null;
                  },
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
                  controller: _lastName,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    String trimmedValue = value.trim();
                    if (trimmedValue.length <= 1) {
                      return 'Please enter a valid last name';
                    }
                    return null;
                  },
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
                  controller: _passwordController,
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
                  controller: _referralCode,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    String trimmedValue = value.trim();
                    if (trimmedValue.length <= 4 || trimmedValue.length >= 15) {
                      return 'Please enter referral code';
                    }

                    return null;
                  },
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
                    onPressed: () {
                      if (isChecked && _formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return const AlertModal();
                              // return const _alertModal();
                            });
                        userRegister(context);
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(isChecked
                            ? Color.fromARGB(255, 73, 165, 240)
                            : Color.fromARGB(255, 73, 165, 240)
                                .withOpacity(0.5)),
                        foregroundColor: MaterialStatePropertyAll(isChecked
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
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
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void userRegister(BuildContext context) async {
    try {
      final email = _emailController.text;
      final phoneNumber = _mobileNumberController.text;
      final selectedRole = userRole;
      final firstName = _firstName.text.toUpperCase();
      final lastName = _lastName.text.toUpperCase();
      final password = _passwordController.text;
      final referralCode = _referralCode.text;

      if (phoneNumber == null || phoneNumber.isEmpty) {
        Navigator.of(context).pop();

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('please enter your mobile number'),
          margin: EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
        ));
      } else {
        if ((email.isNotEmpty) &&
            (phoneNumber.isNotEmpty) &&
            (selectedRole.isNotEmpty && selectedRole != null) &&
            (firstName.isNotEmpty) &&
            (lastName.isNotEmpty) &&
            (password.isNotEmpty)) {
          // checking email id is already present in Db
          final isUserIsThere =
              await GraphQlQueryUserServices().findUserWithEmail(email: email);

          // if email is not in Db
          if (isUserIsThere['status'] == false) {
            //if referral code is not empty then check the referral code is valid or not?
            if (referralCode.isNotEmpty) {
              //need to check is it valid or  not
              //for now sending refferral code is not valid one

              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Refferral code is not valid!'),
                margin: EdgeInsets.all(10),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.red,
              ));
            }
            //generating referral-code
            final String generatedReferralCode = await generateReferralCode();
            final String newReferralCode = 'CEN-' + generatedReferralCode;

            //adding userInfo to DB
            final registerUser = await GraphQlQueryAuthServices().registerUser(
              firstName: firstName,
              lastName: lastName,
              email: email,
              phoneNumber: phoneNumber,
              userRole: selectedRole,
              passwrod: password,
            );
            //if error happend!
            if (registerUser['error'] == true) {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(registerUser['message']),
                margin: const EdgeInsets.all(10),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.red,
              ));
            } else {
              Map<String, dynamic> userDetails = {
                'name': firstName.toUpperCase() + ' ' + lastName.toUpperCase(),
                'email': email,
                'phoneNumber': phoneNumber,
              };

              //storing details to acccess every where in the project
              await GetStorage().write('user', userDetails);
              //navigating to the root screen
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (cntx) => const RootScreen()),
                (Route<dynamic> route) => false,
              );
            }
          } else {
            //if email is in Db throwing error message
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content:
                  Text('Email is already exists, Try with another email id'),
              margin: EdgeInsets.all(10),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.red,
            ));
          }
          //if items are not presented then throwing error messagge
        } else {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Complete all the details before sign up'),
            margin: EdgeInsets.all(10),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
          ));
        }
      }
    } catch (err) {
      Navigator.of(context).pop();
      print(err);
      throw Exception(err);
    }
  }
}
