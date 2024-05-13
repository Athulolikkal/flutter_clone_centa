import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';

class AutoScrollContainerWidget extends StatelessWidget {
  final autoScrollDetails;
  const AutoScrollContainerWidget({super.key, required this.autoScrollDetails});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: autoScrollDataCourse.length,
        itemBuilder: (context, index) {
          return _buildContainer(autoScrollDetails[index], context);
        },
      ),
    );
  }

  Widget _buildContainer(HomeScreenData assetImagePath, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (cntx) => CourseViewDetails(
                  imageUrl: assetImagePath.imageUrl.toString() ?? '',
                  price: assetImagePath.price?.toInt() ?? 0,
                  titleText: assetImagePath.title.toString() ?? '',
                  tag: assetImagePath.tag.toString() ?? '',
                  rating: assetImagePath.rating!.toDouble()??0,
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
                image: NetworkImage(assetImagePath.imageUrl.toString()),
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
