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
import 'dart:developer';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //---calling after building the widget
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeScreenBloc>(context)
          .add(const HomeScreenEvent.getAutoScrollDataInformation());
    });
    Future<void> _refresh() async {
      return BlocProvider.of<HomeScreenBloc>(context)
          .add(const HomeScreenEvent.getAutoScrollDataInformation());
    }
    //---calling every build
    // BlocProvider.of<HomeScreenBloc>(context)
    //     .add(const HomeScreenEvent.getAutoScrollDataInformation());

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          return state.homeScreenData.isNotEmpty
              ? RefreshIndicator(
                  onRefresh: _refresh,
                  child: ListView(
                    children: [
                      //First container
                      // if (state.homeScreenData != null)
                      //   state.homeScreenData!.isNotEmpty
                      //       ? AutoScrollContainerWidget(
                      //           scrollDetails: state.homeScreenData![0])
                      //       : SizedBox
                      //           .shrink(), // Use SizedBox.shrink() to represent an empty widget
                      if (state.homeScreenData.isNotEmpty)
                        AutoScrollContainerWidget(
                          autoScrollDetails: state.homeScreenData[0],
                        ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(children: [
                                Text(
                                  'Trending Searches',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.trending_up_outlined),
                              ]),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AllTrendingSearches(
                                                  trendingDetails:
                                                      state.homeScreenData[1],
                                                  fromHomeScreen: true,
                                                )));
                                  },
                                  child: const Text(
                                    'All Topics',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blue),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      if (state.homeScreenData.isNotEmpty)
                        TrendingSearchesWidget(
                            trendingDetails: state.homeScreenData[1]),

                      //Recommended for you
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Recommended for You',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (cntx) =>
                                                RecommendedForYou(
                                                    courseDetails: state
                                                        .homeScreenData[2])));
                                  },
                                  child: const Text(
                                    'View All',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blue),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      if (state.homeScreenData.isNotEmpty)
                        ItemsShowCard(courseDetails: state.homeScreenData[2]),
                      // ItemsShowCard(courseDetails: recommendation_data),
                      const StartContainerWidget(),
                      const ContainerLastWidget(),
                    ],
                  ),
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    ));
  }
}
