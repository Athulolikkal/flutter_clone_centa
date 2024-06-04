import 'package:centa_clone/applcation/bloc/learnings/bloc/learning_bloc.dart';
import 'package:centa_clone/core/custom_colors.dart';
import 'package:centa_clone/data/learning_page.dart';
import 'package:centa_clone/widgets/learning_screen/items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<LearningBloc>(context)
          .add(const LearningEvent.getAllLearnings());
    });

    // BlocProvider.of<LearningBloc>(context)
    //     .add(const LearningEvent.getAllLearnings());
    List<String> learningHeaders = [
      'Self-Paced Courses',
      'CENTALKS - Free Webinars',
      'Expert Masterclasses',
      'Micro Resources',
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
                BlocBuilder<LearningBloc, LearningState>(
                  builder: (context, state) {
                    return state.learnings.isNotEmpty
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 5),
                            child: ItemsShowCard(
                                courseDetails: state.learnings[index]))
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            child: Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: CustomColorClass.loadingGradient,
                              ),
                            ),
                          );
                  },
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
