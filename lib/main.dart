import 'package:centa_clone/screens/root_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CentaClone());
}

class CentaClone extends StatelessWidget {
  const CentaClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone',
      theme: ThemeData(
          primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
      home:  RootScreen(),
    );
  }
}
