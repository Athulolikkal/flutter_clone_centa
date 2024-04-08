import 'package:centa_clone/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      home: const SplashScreen(),
      
    );
  }
}
