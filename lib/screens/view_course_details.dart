import 'package:centa_clone/widgets/view_details/bottom_bar.dart';
import 'package:centa_clone/widgets/view_details/curved_image.dart';
import 'package:centa_clone/widgets/view_details/tap_bar_view_Details.dart';
import 'package:flutter/material.dart';

class CourseViewDetails extends StatelessWidget {
  final String imageUrl;
  final int price;
  final String titleText;
  final String tag;
  const CourseViewDetails(
      {super.key,
      required this.imageUrl,
      required this.price,
      required this.titleText,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 30,
            )),
        actions: [
          const SizedBox(
            width: 30,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Color.fromARGB(255, 67, 163, 242),
              )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          //clip path is using for getting the curve shape and also we need to try the code for getting curve shape
          ClipPath(
            clipper: CustomCurvedEdges(),
            child: Image.asset(imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              tag.toUpperCase(),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              titleText,
              style: const TextStyle(
                color: Color.fromARGB(255, 39, 154, 207),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),

          const TabBarViewDetails(),
        ],
      ),
      bottomNavigationBar: BottomBarViewDetails(
        priceOfProduct: price,
      ),
    );
  }
}
