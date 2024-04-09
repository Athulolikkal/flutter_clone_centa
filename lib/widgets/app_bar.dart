
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class CentaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CentaAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(69.0);
  @override
  Widget build(BuildContext context) {
    var userDetails = GetStorage().read('user');
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
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
          Builder(
            builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute(builder: (cntx) => const LoginRoot()),
                  //   (Route<dynamic> route) => false,
                  // );
                },
                child: userDetails == null
                    ? const CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 240, 238, 238),
                        foregroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                        ),
                      )
                    : CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 240, 238, 238),
                        backgroundImage: NetworkImage(
                            userDetails['userProfile'] != null
                                ? userDetails['userProfile']
                                : ''),
                      ),
              );
            }
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
