import 'package:centa_clone/data/drawer_data.dart';
import 'package:centa_clone/screens/login_root.dart';
import 'package:centa_clone/services/flutter_services.dart';
import 'package:flutter/material.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            iconColor: Colors.blue,
            initiallyExpanded: true,
            title: Text(
              names[index],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            shape: const RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
              borderRadius: BorderRadius.zero,
            ),
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                //to take available spaces
                shrinkWrap: true,
                itemCount: getSubItems(names[index]).length,
                itemBuilder: (BuildContext context, int subIndex) {
                  // Get the subitems for the current item
                  final subitem = getSubItems(names[index])[subIndex];
                  return ListTile(
                    leading: subitem['icon'],
                    title: Text(subitem['title']),
                    onTap: () async {
                      if (subitem['title'] == 'Sign In') {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (cntx) => const LoginRoot()),
                          (Route<dynamic> route) => false,
                        );
                      } else if (subitem['title'] == 'Sign Out') {
                        await FirebaseService.signOutFromGoogle();
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (cntx) => const LoginRoot()),
                          (Route<dynamic> route) => false,
                        );
                      } else {
                        print('others clicked');
                      }
                    },
                  );
                },
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
            child: Divider(
              thickness: 1.5,
            ),
          );
        },
      ),
    );
  }
}
