import 'package:centa_clone/widgets/home_screen/auto_scroll_container.dart';
import 'package:centa_clone/widgets/home_screen/last_container_widget.dart';
import 'package:centa_clone/widgets/home_screen/recommendation_widget.dart';
import 'package:centa_clone/widgets/home_screen/start_widget.dart';
import 'package:centa_clone/widgets/home_screen/trending_searches.dart';
import 'package:flutter/material.dart';

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
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_outward_outlined),
                  ]),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'All Topics',
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ))
                ],
              ),
            ),
          ),

          const TrendingSearchesWidget(),

          //Recommended for you
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended for You',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View All',
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ))
                ],
              ),
            ),
          ),

          const RecommendationWidget(),
          const StartContainerWidget(),
          const ContainerLastWidget(),
        ],
      ),
    ));
  }
}
