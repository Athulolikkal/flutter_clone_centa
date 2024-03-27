import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:flutter/material.dart';

class TrendingSearchesWidget extends StatelessWidget {
  const TrendingSearchesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: (trendingSearchesList.length / 3).ceil(),
          itemBuilder: (context, index) {
            return _groupedSearchWidgets(index, context);
          }),
    );
  }

  Widget _groupedSearchWidgets(int passedindex, BuildContext context) {
    int groupStartIndex = passedindex * 3;
    int groupEndIndex = groupStartIndex + 3;
    if (groupEndIndex > trendingSearchesList.length) {
      groupEndIndex = trendingSearchesList.length;
    }
    List<Map<String, dynamic>> groupList =
        trendingSearchesList.sublist(groupStartIndex, groupEndIndex);

    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.86,
      child: ListView.builder(
         physics:const NeverScrollableScrollPhysics() ,
          itemCount: groupList.length,
          itemBuilder: (context, index) {
            int totalSearches = groupList[index]['totalSearches'];
            int firstDigit = int.parse(totalSearches.toString()[0]);
            return ListTile(
              onTap: () {
                print(groupList[index]);
              },
              leading: Container(
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(groupList[index]['image']),
                      fit: BoxFit.fill),
                ),
              ),
              title: Text(
                groupList[index]['title'],
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("#${groupList[index]['tag']}"),
                  Text(groupList[index]['totalSearches'] <= 999
                      ? "$totalSearches Searches"
                      : "${firstDigit}k Searches"), // Add another subtitle here
                ],
              ),
            );
          }),
    );
  }
}
