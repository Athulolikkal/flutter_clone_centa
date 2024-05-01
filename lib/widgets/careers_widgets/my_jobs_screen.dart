import 'package:flutter/material.dart';

class MyJobsWidget extends StatelessWidget {
  final void Function(int) changeTabIndex;
  const MyJobsWidget({super.key, required this.changeTabIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Image.asset(
            'assets/images/no_my_job.jpg',
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Oh!',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w800, color: Colors.grey),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'It seems that you are yet to apply for jobs!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              onPressed: () {
                changeTabIndex(0);
              },
              style: const ButtonStyle(
                  side: MaterialStatePropertyAll(
                    BorderSide(
                        color: Color.fromARGB(255, 129, 187, 235), width: 1),
                  ),
                  foregroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 129, 187, 235),
                  ),
                  minimumSize: MaterialStatePropertyAll(Size(150, 40))),
              child: const Text(
                'Apply Now',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
