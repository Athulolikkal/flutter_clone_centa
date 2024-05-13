// import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';

class TrendingSearchesWidget extends StatelessWidget {
  final trendingDetails;
  const TrendingSearchesWidget({super.key, required this.trendingDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: (trendingDetails.length / 3).ceil(),
          itemBuilder: (context, index) {
            return _groupedSearchWidgets(index, context);
          }),
    );
  }

  Widget _groupedSearchWidgets(int passedindex, BuildContext context) {
    int groupStartIndex = passedindex * 3;
    int groupEndIndex = groupStartIndex + 3;
    if (groupEndIndex > trendingDetails.length) {
      groupEndIndex = trendingDetails.length;
    }
    List<HomeScreenData> groupList =
        trendingDetails.sublist(groupStartIndex, groupEndIndex);

    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.86,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: groupList.length,
          itemBuilder: (context, index) {
            int totalSearches = groupList[index].searches?.toInt() ?? 0;
            int firstDigit = int.parse(totalSearches.toString()[0]);

            return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (cntx) => CourseViewDetails(
                      imageUrl: groupList[index].imageUrl.toString() ?? '',
                      price: groupList[index].price?.toInt() ?? 0,
                      titleText: groupList[index].title.toString(),
                      tag: groupList[index].tag ?? '',
                      rating: groupList[index].rating!.toDouble() ?? 0,
                    ),
                  ),
                );
              },
              leading: Container(
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(groupList[index].imageUrl.toString()),
                      fit: BoxFit.fill),
                ),
              ),
              title: Text(
                groupList[index].title.toString() ?? '',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("#${groupList[index].tag}"),
                  Text(totalSearches <= 999
                      ? "$totalSearches Searches"
                      : "${firstDigit}k Searches"),
                ],
              ),
            );
          }),
    );
  }
}
