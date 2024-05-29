import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:centa_clone/widgets/all_searches/all_searches.dart';
import 'package:flutter/material.dart';

class AllTrendingSearches extends StatelessWidget {
  final List<HomeScreenData> trendingDetails;
  final bool fromHomeScreen;
  const AllTrendingSearches({
    super.key,
    required this.trendingDetails,
    required this.fromHomeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
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
        child: AllSearches(
            trendingDetails: trendingDetails, fromHomeScreen: fromHomeScreen),
      ),
    );
  }
}
