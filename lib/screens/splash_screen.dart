import 'package:centa_clone/screens/root_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/centa_C_logo.png',
                width: 100,
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10),
            //   child: Text(
            //     'CENTA',
            //     style: TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.w700,
            //         letterSpacing: 5,
            //         color: Color.fromARGB(255, 2, 89, 161),
            //         shadows: [
            //           Shadow(
            //             color: Color.fromARGB(255, 184, 181, 181),
            //             offset: Offset(-2, 0),
            //             blurRadius: 1,
            //           ),
            //         ]),
            //   ),
            // )
          ])),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (cntx) => RootScreen()),
      (Route<dynamic> route) => false,
    );
  }
}
