import 'package:centa_clone/applcation/bloc/searches/searches_bloc.dart';
import 'package:centa_clone/widgets/all_searches/all_searches.dart';
import 'package:centa_clone/widgets/search_screen/search_items.dart';
import 'package:centa_clone/widgets/search_screen/trending_searches_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SearchesBloc>(context)
        .add(const SearchesEvent.resetSearchState());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(
                onChanged: (value) {
                  BlocProvider.of<SearchesBloc>(context)
                      .add(SearchesEvent.getAllSearchItems(value));

                  print(value);
                },
                backgroundColor: const Color.fromARGB(255, 244, 243, 243),
                placeholder: 'What are you planning to learn today?',
                placeholderStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 149, 146, 146),
                  fontSize: 15,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                BlocBuilder<SearchesBloc, SearchesState>(
                    builder: (context, state) {
                  print("search details: ${state.isSearchEmpty}");
                  if (state.isLoading) {
                    return const Expanded(
                        child: Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 50, 157, 245),
                        ),
                      ),
                    ));
                  } else if (state.isSearchEmpty) {
                    return const Expanded(
                      child: TrendingSearchesList(),
                    );
                  } else if (state.searchDetails.isEmpty) {
                    return const Expanded(
                      // if there is no searched Item
                      child: Center(
                        child: Text(
                          'Sorry, we couldn\'t find what your looking for!',
                          style: TextStyle(
                              color: Color.fromARGB(255, 49, 136, 207),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ),
                    );
                  } else {
                    return Expanded(
                      // if there is  searched Items
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: AllSearches(
                            trendingDetails: state.searchDetails,
                            fromHomeScreen: false),
                      ),
                    );
                  }
                })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
