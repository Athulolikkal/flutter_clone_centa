import 'package:centa_clone/widgets/drawer_widget/drawer_header.dart';
import 'package:centa_clone/widgets/drawer_widget/drawer_item_list.dart';
import 'package:flutter/material.dart';
// import 'package:get_storage/get_storage.dart';

class CentaDrawer extends StatelessWidget {
  const CentaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final userInfo = GetStorage().read('user');
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
                  iconSize: 30.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                  color: Colors.black,
                  iconSize: 28.0,
                ),
              ],
            ),
            expandedHeight: 120,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'MyCENTA',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
              //for showing user profile
              const CentaDrawerHeader(),
              //listing drawer items
              const DrawerItemList(),
              //end widget
              Container(
                color: Colors.white,
                child:const Column(
                  children: [
                  
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                      SizedBox(height: 18,),
                     Text(
                      'Version',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 92, 171, 236),
                          letterSpacing: 5),
                      textAlign: TextAlign.center,
                    ),
                     Text(
                      '1.3.26',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 17, 17, 17),
                          letterSpacing: 5),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40,),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
