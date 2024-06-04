import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';

class AllSearches extends StatelessWidget {
  final List<HomeScreenData> trendingDetails;
  final bool fromHomeScreen;
  const AllSearches(
      {super.key, required this.trendingDetails, required this.fromHomeScreen});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (cntx) => CourseViewDetails(
                            imageUrl:
                                trendingDetails[index].imageUrl.toString() ??
                                    '',
                            price: trendingDetails[index].price?.toInt() ?? 0,
                            titleText:
                                trendingDetails[index].title.toString() ?? '',
                            tag: trendingDetails[index].tag.toString(),
                            rating: trendingDetails[index].rating!.toDouble() ??
                                0.0,
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
                            color:const Color.fromARGB(255, 192, 190, 190),
                            image: DecorationImage(
                              image: NetworkImage(
                                  trendingDetails[index].imageUrl.toString() ??
                                      ''),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(color: Colors.grey, width: 0.5)),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: ListTile(
                        title: Text(
                          trendingDetails[index].title.toString() ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              trendingDetails[index].creator.toString(),
                              style: const TextStyle(fontSize: 14),
                            ),
                            fromHomeScreen
                                ? Text(
                                    "${trendingDetails[index].searches} Searches",
                                    style: const TextStyle(fontSize: 14),
                                  )
                                : Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "${trendingDetails[index].rating}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
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
          itemCount: trendingDetails.length),
    );
  }
}
