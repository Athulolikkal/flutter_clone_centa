import 'package:centa_clone/screens/careers_screen.dart';
import 'package:centa_clone/screens/community_screen.dart';
import 'package:centa_clone/screens/home_screen.dart';
import 'package:centa_clone/screens/learning_screen.dart';
import 'package:centa_clone/screens/mylearning_screen.dart';
import 'package:centa_clone/widgets/app_bar.dart';
import 'package:centa_clone/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  RootScreen({super.key});
  static ValueNotifier<int> selectedBottomIndex = ValueNotifier(0);
  final _pages = const [
    HomeScreen(),
    CommunityScreen(),
    LearningScreen(),
    MyLearningScreen(),
    CareersScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CentaAppBar(),
      bottomNavigationBar: const BottomNavigationBarCenta(),
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: selectedBottomIndex,
              builder: (BuildContext context, int updatedIndex, Widget? _) {
                return _pages[updatedIndex];
              })),
    );
  }
}
