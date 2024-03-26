import 'package:flutter/material.dart';

class CentaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CentaAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(69.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      // toolbarHeight: 80,
      title: Image.asset(
        'assets/images/centa_C_logo.png',
        width: 45,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          iconSize: 30.0,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
          iconSize: 30.0,
        ),
        const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 240, 238, 238),
          foregroundColor: Colors.blue,
          child: Icon(
            Icons.person,
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
