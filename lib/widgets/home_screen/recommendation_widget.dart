import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:flutter/material.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendation_data.length,
        itemBuilder: (context, index) {
          return _recommendationCard(recommendation_data[index], context);
        },
      ),
    );
  }

  Widget _recommendationCard(Map autoScrollData, BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 0.86,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 254, 254, 254),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 240, 237, 237),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: SizedBox(
              height: 200,
              child: Image.asset(
                autoScrollData['image'],
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: ListTile(
              title: Text(
                autoScrollData['title'],
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Team Centa'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.grade_sharp,
                      color: Colors.amber,
                    ),
                    Text(
                        "${autoScrollData['rating']} | ${autoScrollData['number']} ")
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'FREE',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
