import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';

class AllTrendingSearches extends StatelessWidget {
  const AllTrendingSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        // title: const Text(
        //   'All Trending Searches\u{1F4C8}',
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 18,
        //   ),
        // ),
        title: const Row(
          children: [
            Text(
              'All Trending Searches',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Icon(Icons.trending_up_outlined)
          ],
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 32,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (cntx) => CourseViewDetails(
                                imageUrl: trendingSearchesList[index]['image'],
                                price: trendingSearchesList[index]['price'],
                                titleText: trendingSearchesList[index]['title'],
                                tag: trendingSearchesList[index]['tag'],
                                rating: trendingSearchesList[index]['rating'],
                              )));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                                image: DecorationImage(
                                  image: AssetImage(
                                      trendingSearchesList[index]['image']),
                                  fit: BoxFit.fill,
                                ),
                                border:
                                    Border.all(color: Colors.grey, width: 0.5)),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: ListTile(
                            title: Text(
                              trendingSearchesList[index]['title'],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Team Centa",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "${trendingSearchesList[index]['totalSearches']} Searches",
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemCount: trendingSearchesList.length),
        ),
      ),
    );
  }
}
