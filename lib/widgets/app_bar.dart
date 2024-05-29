import 'package:centa_clone/screens/root_screen.dart';
import 'package:centa_clone/screens/search_screen.dart';
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
        title: GestureDetector(
          onTap: () {
            RootScreen.selectedBottomIndex.value = 0;
          },
          child: Image.asset(
            'assets/images/centa_C_logo.png',
            width: 40,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (cntx) => const SearchScreen()));
            },
            icon: const Icon(Icons.search),
            iconSize: 30.0,
          ),
          ValueListenableBuilder(
              valueListenable: RootScreen.selectedBottomIndex,
              builder: (BuildContext ctx, int updatedIndex, Widget? _) {
                return IconButton(
                  onPressed: () {},
                  icon: Icon(RootScreen.selectedBottomIndex.value != 4
                      ? Icons.notifications_none
                      : Icons.tune_outlined),
                  iconSize: 30.0,
                );
              }),
          Builder(builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
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
                      backgroundImage: userDetails['userProfile'] != null
                          ? NetworkImage(userDetails['userProfile'])
                          : null,
                      child: userDetails['userProfile'] == null
                          ? const Icon(
                              Icons.person,
                              color: Colors.blue,
                            )
                          : null,
                    ),
            );
          }),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
