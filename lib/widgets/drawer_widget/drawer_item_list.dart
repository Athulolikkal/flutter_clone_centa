import 'package:centa_clone/data/community_data.dart';
import 'package:flutter/material.dart';

class DrawerItemList extends StatelessWidget {
  const DrawerItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              initiallyExpanded: true,
              title: Text(names[index]),
              shape:const RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.transparent, width: 0), // Hide the border
                borderRadius: BorderRadius.zero, // Remove border radius
              ),
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: getSubItems(names[index]).length,
                  itemBuilder: (BuildContext context, int subIndex) {
                    // Get the subitems for the current item
                    final subitem = getSubItems(names[index])[subIndex];
                    return ListTile(
                      leading: subitem['icon'],
                      title: Text(subitem['title']),
                      onTap: () {
                        // Handle subitem tap
                      },
                    );
                  },
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: names.length),
      // child: Text('children'),
    );
  }
}
