import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartContainerWidget extends StatelessWidget {
  const StartContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        height: 250,
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 233, 244, 252),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 10, 10, 10).withOpacity(0.1), // Shadow color
                spreadRadius: 2, // Spread radius
                blurRadius: 1, // Blur radius
                offset: Offset(0,1), // Offset
              ),
            ]),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              '''Can You Get These\nRight ?''',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Take the quiz to find out ')),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Start',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(color: Colors.blue, width: 3)),
                  foregroundColor: MaterialStateProperty.all(Colors.blue),
                  minimumSize: MaterialStateProperty.all(Size(100, 50)),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
