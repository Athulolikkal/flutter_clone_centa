import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class CentaDrawerHeader extends StatelessWidget {
  const CentaDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final userInfo = GetStorage().read('user');
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color.fromARGB(255, 203, 213, 235),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      radius: 45,
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 217, 228, 239),
                        radius: 38,
                        foregroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Text(
                    userInfo != null ?  userInfo['name'].toUpperCase() : 'Centa User',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '0',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Posts',
                style: TextStyle(fontSize: 18,),
              ),
              Text(
                'Followers',
                style: TextStyle(fontSize: 18, ),
              ),
              Text(
                'Following',
                style: TextStyle(fontSize: 18, ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
