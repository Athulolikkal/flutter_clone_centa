import 'package:centa_clone/widgets/login/google_apple_login.dart';
import 'package:flutter/material.dart';

class LoginWithPhoneNumber extends StatelessWidget {
  const LoginWithPhoneNumber({super.key});

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
                'Please enter the phone number registered with CENTA\u00AE',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Type your number",
                prefixIcon: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.flag),
                    SizedBox(
                        width:
                            8), // Adjust the spacing between prefix icon and text
                    Text(
                      "+91  ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 142, 140, 140), width: 1)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
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
                  child: const Text('Verify With OTP')),
            ),
            const Text(
              '(Recommended for existing CENTA\u00AE Community Members from India)',
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
