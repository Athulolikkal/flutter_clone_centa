import 'package:centa_clone/data/drawer_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class CentaDrawerHeader extends StatelessWidget {
  const CentaDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var userInfo = GetStorage().read('user');
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor:const Color.fromARGB(255, 203, 213, 235),
                    child: CircleAvatar(
                      backgroundColor:const Color.fromARGB(255, 255, 255, 255),
                      radius: 45,
                      child: CircleAvatar(
                        backgroundColor:const Color.fromARGB(255, 217, 228, 239),
                        radius: 38,
                        foregroundColor: Colors.blue,
                        backgroundImage:
                            userInfo != null && userInfo['userProfile'] != null
                                ? NetworkImage(userInfo['userProfile'])
                                : null,
                        child:
                            userInfo == null || userInfo['userProfile'] == null
                                ?const Icon(
                                    Icons.person,
                                    size: 45,
                                  )
                                : null,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Text(
                    userInfo != null
                        ? userInfo['name'].toUpperCase()
                        : 'Centa User',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Posts',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                'Followers',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                'Following',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
