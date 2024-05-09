import 'package:centa_clone/applcation/bloc/home_screen/home_screen_bloc.dart';
import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:centa_clone/screens/all_trending_searches.dart';
import 'package:centa_clone/screens/recommended_for_you.dart';
import 'package:centa_clone/widgets/home_screen/auto_scroll_container.dart';
import 'package:centa_clone/widgets/home_screen/last_container_widget.dart';
import 'package:centa_clone/widgets/home_screen/start_widget.dart';
import 'package:centa_clone/widgets/home_screen/trending_searches.dart';
import 'package:centa_clone/widgets/learning_screen/items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //calling after building the widget
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeScreenBloc>(context)
          .add(const HomeScreenEvent.getAutoScrollDataInformation());
    });
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
                    Icon(Icons.trending_up_outlined),
                  ]),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AllTrendingSearches()));
                      },
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (cntx) => const RecommendedForYou()));
                      },
                      child: const Text(
                        'View All',
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ))
                ],
              ),
            ),
          ),
          ItemsShowCard(courseDetails: recommendation_data),
          const StartContainerWidget(),
          const ContainerLastWidget(),
        ],
      ),
    ));
  }
}
