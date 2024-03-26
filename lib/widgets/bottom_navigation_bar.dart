import 'package:centa_clone/screens/root_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarCenta extends StatelessWidget {
  const BottomNavigationBarCenta({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: RootScreen.selectedBottomIndex,
        builder: (BuildContext ctx, int updatedIndex, Widget? _) {
          return BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: updatedIndex,
            onTap: (index) {
              RootScreen.selectedBottomIndex.value = index;
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: const Color.fromARGB(255, 59, 58, 58),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group_outlined), label: 'Community'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu_book_outlined), label: 'Learning'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book_online_outlined), label: 'My Learning'),
              BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Careers'),
            ],
          );
        });
  }
}
