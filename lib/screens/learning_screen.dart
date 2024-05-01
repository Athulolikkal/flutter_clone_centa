import 'package:centa_clone/data/learning_page.dart';
import 'package:centa_clone/widgets/learning_screen/items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> learningHeaders = [
      'Self-Paced Courses',
      'CENTALKS - Free Webinars',
      'Expert Masterclasses',
      'Micro Resources',
    ];
    List<List<Map<String, dynamic>>> courseDetails = [
      selfPacedCourse,
      centaTalksWebinars,
      expertMasterClassesData,
      microResources
    ];
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: ListView.builder(
        itemCount: learningHeaders.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      learningHeaders[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      'View All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 64, 160, 240),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  child: ItemsShowCard(courseDetails: courseDetails[index]),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
