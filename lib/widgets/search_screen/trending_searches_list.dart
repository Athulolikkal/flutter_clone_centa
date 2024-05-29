import 'package:centa_clone/applcation/bloc/home_screen/home_screen_bloc.dart';
import 'package:centa_clone/screens/view_course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingSearchesList extends StatelessWidget {
  const TrendingSearchesList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeScreenBloc>(context)
          .add(const HomeScreenEvent.getAutoScrollDataInformation());
    });
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Text(
              'Trending Searches',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 80, 173, 249)),
            ),
          ),
          //trending searchItems

          BlocBuilder<HomeScreenBloc, HomeScreenState>(
            builder: (context, state) {
              if (state.homeScreenData.isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    child: ListView.separated(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext cntx, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (cntx) => CourseViewDetails(
                                        imageUrl: state.homeScreenData[1][index]
                                                .imageUrl
                                                .toString() ??
                                            '',
                                        price: state
                                                .homeScreenData[1][index].price
                                                ?.toInt() ??
                                            0,
                                        titleText: state
                                                .homeScreenData[1][index].title
                                                .toString() ??
                                            '',
                                        tag: state.homeScreenData[1][index].tag
                                            .toString(),
                                        rating: state.homeScreenData[1][index]
                                                .rating!
                                                .toDouble() ??
                                            0.0,
                                      )));
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.trending_up_outlined,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    state.homeScreenData[1][index].title
                                            .toString() ??
                                        '',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext cntx, int index) {
                          return const Divider();
                        },
                        itemCount: state.homeScreenData[1].length > 4
                            ? 4
                            : state.homeScreenData[1].length),
                  ),
                );
              } else {
                return const Center(
                  child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 47, 156, 245),
                      )),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
