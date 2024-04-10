import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';

class AutoScrollContainerWidget extends StatelessWidget {
  const AutoScrollContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: autoScrollDataCourse.length,
          itemBuilder: (context, index) {
            return _buildContainer(autoScrollDataCourse[index], context);
          },
        ));
  }

  Widget _buildContainer(Map assetImagePath, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (cntx) => CourseViewDetails(
                  imageUrl: assetImagePath['image'],
                  price: assetImagePath['price'],
                  titleText: assetImagePath['title'],
                  tag: assetImagePath['tag'],
                )));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 194, 194, 194),
              border: Border.all(
                color: const Color.fromARGB(255, 94, 93, 93),
                width: 1,
              ),
              image: DecorationImage(
                image: AssetImage(assetImagePath['image']),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
