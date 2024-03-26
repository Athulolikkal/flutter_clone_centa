import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: autoScrollData.length,
        itemBuilder: (context, index) {
          return _recommendationCard(autoScrollData[index], context);
        },
      ),
    );
  }

  Widget _recommendationCard(String autoScrollData, BuildContext context) {
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
                autoScrollData,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: ListTile(
              title: Text(
                'Building Scial Emotional Intelligence: Strategies for classroom management',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              subtitle: Text('Team Centa'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.grade_sharp,
                      color: Colors.amber,
                    ),
                    Text('4.7 | 39')
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
