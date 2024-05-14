import 'package:centa_clone/applcation/bloc/home_screen/home_screen_bloc.dart';
import 'package:centa_clone/applcation/bloc/learnings/bloc/learning_bloc.dart';
import 'package:centa_clone/domain/core/dependency_injection/injectable.dart';
import 'package:centa_clone/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureInjection();
  runApp(const CentaClone());
}

class CentaClone extends StatelessWidget {
  const CentaClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeScreenBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LearningBloc>(),
        ),
      ],
    
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clone',
        theme: ThemeData(
            primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
        home: const SplashScreen(),
      ),
    );
  }
}
