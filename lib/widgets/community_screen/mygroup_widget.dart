import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:flutter/material.dart';

class MyGroupWidget extends StatelessWidget {
  const MyGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        itemCount: trendingSearchesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                title: Text(
                  trendingSearchesList[index]['title'],
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  "${trendingSearchesList[index]['totalSearches']} Members",
                ),
                leading: Container(
                  height: 300, // Adjust the height here
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(trendingSearchesList[index]['image']),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
