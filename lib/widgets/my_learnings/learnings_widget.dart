import 'package:centa_clone/widgets/my_learnings/no_data.dart';
import 'package:flutter/material.dart';

class Learnings extends StatelessWidget {
  const Learnings({super.key});

  @override
  Widget build(BuildContext context) {
    return const NoRecords(
      notLearning: false,
    );
  }
}
