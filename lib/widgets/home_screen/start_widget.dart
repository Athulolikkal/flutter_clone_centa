import 'package:flutter/material.dart';

class StartContainerWidget extends StatelessWidget {
  const StartContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        height: 250,
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 244, 252),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '''Can You Get These\nRight ?''',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/images/online_education.png',width: 140,height: 140,)
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text('Take the quiz to find out '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
