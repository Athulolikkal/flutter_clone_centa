import 'package:centa_clone/widgets/home_screen/auto_scroll_container.dart';
import 'package:centa_clone/widgets/home_screen/recommendation_widget.dart';
import 'package:centa_clone/widgets/home_screen/start_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          //First container
          const AutoScrollContainerWidget(),

          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(children: [
                    Text(
                      'Trending Searches',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_outward_outlined),
                  ]),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'All Topics',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ))
                ],
              ),
            ),
          ),
          //Trending Searches
          SizedBox(
            height: 370,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 54, 244, 63),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width * 0.86,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 54, 244, 63),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: MediaQuery.of(context).size.width * 0.86,
                  ),
                ],
              ),
            ),
          ),

          //Recommended for you
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended for You',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ))
                ],
              ),
            ),
          ),

          const RecommendationWidget(),

          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Container(
          //     margin: const EdgeInsets.all(10),
          //     decoration: BoxDecoration(
          //       color: Color.fromARGB(255, 142, 205, 79),
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     width: MediaQuery.of(context).size.width * 0.86,
          //     height: 200,
          //   ),
          // ),
          const StartContainerWidget(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 142, 205, 79),
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width * 0.86,
              height: 200,
            ),
          ),
        ],
      ),
    ));
  }
}
