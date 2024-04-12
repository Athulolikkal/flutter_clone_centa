import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:flutter/material.dart';

class MyGroupWidget extends StatelessWidget {
  const MyGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trendingSearchesList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 90, 

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage(
                                trendingSearchesList[index]['image']),
                            fit: BoxFit.fill,
                          ),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              trendingSearchesList[index]['title'],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              "${trendingSearchesList[index]['totalSearches']} Members",
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (int i = 0;
                                      i < trendingSearchesList.length;
                                      i++)
                                    Align(
                                      widthFactor: 0.5,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            trendingSearchesList[i]['image']),
                                        backgroundColor: Colors.white,
                                        radius: 10,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
