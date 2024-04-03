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
            color: const Color.fromARGB(255, 233, 244, 252),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: -2,
                blurRadius: 2,
                offset: const Offset(0, 3),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: [
                    const TextSpan(text: 'Can You Get These\n'),
                    WidgetSpan(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'Right?',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 3.0),
                                  child: Text('Take the quiz to find out '),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30.0),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      side: const MaterialStatePropertyAll(
                                          BorderSide(
                                              color: Colors.blue, width: 3)),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue),
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(100, 50)),
                                    ),
                                    child: const Text(
                                      'Start',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Image.asset(
                              'assets/images/online_education.png',
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
