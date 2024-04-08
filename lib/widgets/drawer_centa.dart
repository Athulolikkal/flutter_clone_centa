import 'package:centa_clone/widgets/drawer_widget/drawer_header.dart';
import 'package:centa_clone/widgets/drawer_widget/drawer_item_list.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class CentaDrawer extends StatelessWidget {
  const CentaDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userInfo = GetStorage().read('user');
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width * 1,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.keyboard_arrow_left),
                  color: Colors.black,
                  iconSize: 35.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                  color: Colors.black,
                  iconSize: 30.0,
                ),
              ],
            ),
            expandedHeight: 120,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'MyCENTA',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            pinned: true,
            floating: false,
            snap: false,
          ),
          // const SliverToBoxAdapter(
          //   child: CentaDrawerHeader(),
          // ),

          SliverList(
            delegate: SliverChildListDelegate([
              const CentaDrawerHeader(),
              const DrawerItemList(),
            ]),
          ),
        ],
      ),
    );
  }
}
