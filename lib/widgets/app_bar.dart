import 'package:centa_clone/screens/login_root.dart';
import 'package:flutter/material.dart';


class CentaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CentaAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(69.0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: AppBar(
        // backgroundColor: Colors.white,
        surfaceTintColor:Colors.transparent ,
        // toolbarHeight: 80,
        title: Image.asset(
          'assets/images/centa_C_logo.png',
          width: 40,
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (cntx) => const LoginRoot()),
                (Route<dynamic> route) => false,
              );
            },
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 240, 238, 238),
              foregroundColor: Colors.blue,
              child: Icon(
                Icons.person,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
