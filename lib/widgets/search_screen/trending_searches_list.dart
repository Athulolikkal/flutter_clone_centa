import 'package:flutter/material.dart';

class TrendingSearchesList extends StatelessWidget {
  const TrendingSearchesList({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> trendingList = [
      'Crafting inclusive classrooms: pratical strategies for teachers',
      'Math, the myth, the mystery, the monster',
      'The universe as a laboratory for mathematics, physics and chemistry',
      'Basic counselling',
    ];
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              child: ListView.separated(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext cntx, int index) {
                    return Row(
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
                            trendingList[index],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext cntx, int index) {
                    return const Divider();
                  },
                  itemCount: trendingList.length),
            ),
          ),
        ],
      ),
    );
  }
}
