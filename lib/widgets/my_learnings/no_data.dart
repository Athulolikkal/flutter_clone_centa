import 'package:centa_clone/screens/root_screen.dart';
import 'package:flutter/material.dart';

class NoRecords extends StatelessWidget {
  final bool notLearning;
  const NoRecords({super.key, required this.notLearning});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Image.asset(
              notLearning
                  ? 'assets/images/learning_no_records.jpg'
                  : 'assets/images/no.jpg',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
          const Text(
            'Oh!',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w800, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              notLearning
                  ? 'You don\'t seem to have any registration here'
                  : 'It seems that you are yet to start your learning journey! Let\'s explore some resources.',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              onPressed: () {
                RootScreen.selectedBottomIndex.value = 2;
              },
              style: const ButtonStyle(
                  side: MaterialStatePropertyAll(
                    BorderSide(
                        color: Color.fromARGB(255, 129, 187, 235), width: 1),
                  ),
                  foregroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 129, 187, 235),
                  ),
                  minimumSize: MaterialStatePropertyAll(Size(180, 50))),
              child: const Text(
                'Explore Learning Resources',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
