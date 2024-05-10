import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';

class ItemsShowCard extends StatelessWidget {
  final courseDetails;
  const ItemsShowCard({
    super.key,
    required this.courseDetails,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: courseDetails.length,
        itemBuilder: (BuildContext context, int index) {
          return _itemCard(courseDetails[index], context);
        },
      ),
    );
  }
}

Widget _itemCard(Map course, BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (cntx) => CourseViewDetails(
          imageUrl: course['image'],
          tag: course['tag'],
          price: course['price'],
          titleText: course['title'],
          rating: course['rating'],
        ),
        // builder: (cntx) => CourseViewDetails(
        //   imageUrl: course['image'],
        //   tag: course['tag'],
        //   price: course['price'],
        //   titleText: course['title'],
        //   rating: course['rating'],
        // ),
      ),
    ),
    child: Container(
      width: 320,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: const Color.fromARGB(255, 196, 193, 192),
          width: 1.0, // Border width
        ),
      ),
      child: Column(
        children: [
          //image
          Stack(alignment: Alignment.topRight, children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: SizedBox(
                
                child: Image.asset(
                  course['image'],
                  height: 150,
                  width: 320,
                  fit: BoxFit.fill,
                ),
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
                      size: 30,
                    ),
                  )),
            )
          ]),
          ListTile(
            title: Text(
              course['title'],
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
            ),
            subtitle: Text(course['creator'],style:const TextStyle(fontSize: 12),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (course['rating'] > 0)
                      const Icon(
                        Icons.grade_sharp,
                        color: Colors.amber,
                      ),
                    if (course['date'] != null && course['rating'] <= 1)
                      Text(course['date'],style:const TextStyle(fontSize: 12)),
                    if (course['rating'] > 0)
                      Text("${course['rating']} | ${course['number']}"),
                  ],
                ),
                Text(
                  course['price'] == 0 ? 'FREE' : "\u20B9 ${course['price']}.0",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 176, 243)),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
