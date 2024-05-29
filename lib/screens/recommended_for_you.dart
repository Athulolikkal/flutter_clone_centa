import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';

class RecommendedForYou extends StatelessWidget {
  final List<HomeScreenData> courseDetails;
  const RecommendedForYou({super.key, required this.courseDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: const Text(
            'Recommended For You',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.keyboard_arrow_left,
                size: 30,
              )),
        ),
        body: SizedBox(
          child: GridView.builder(
              itemCount: recommendation_data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                mainAxisExtent: 230,
              ),
              padding: const EdgeInsets.all(10),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CourseViewDetails(
                              imageUrl:
                                  courseDetails[index].imageUrl.toString() ??
                                      '',
                              price: courseDetails[index].price?.toInt() ?? 0,
                              titleText:
                                  courseDetails[index].title.toString() ?? '',
                              tag: courseDetails[index].tag.toString(),
                              rating: courseDetails[index].rating!.toDouble() ??
                                  0.0,
                            )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 254, 254),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color.fromARGB(255, 240, 237, 237),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              child: Image.network(
                                courseDetails[index].imageUrl.toString() ?? '',
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                      255,
                                      203,
                                      203,
                                      203,
                                    ).withOpacity(0.7),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.favorite_outline_outlined,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                courseDetails[index].creator ??
                                    courseDetails[index].creator.toString(),
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                courseDetails[index].title.toString() ?? '',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                  Text(
                                    "${courseDetails[index].rating!.toDouble()} | ${courseDetails[index].serialNumber}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color.fromARGB(255, 115, 114, 114),
                                        fontSize: 13),
                                  )
                                ],
                              ),
                              Text(
                                courseDetails[index].price == 0
                                    ? 'FREE'
                                    : "\u20B9 ${courseDetails[index].price}.0",
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 95, 176, 243)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
