import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerLastWidget extends StatelessWidget {
  const ContainerLastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 80, 168, 240),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/centa_app_pointing.png',
                height: 220,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const Expanded(
            flex: 6,
            child: Column(
              children: [
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Get your voice heard!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                  child: Text(
                    "Participate in CENTA's The Future of Teaching survey and get your thoughts relayed to key stakeholderes!",
                    style: TextStyle(
                      color: Colors.white,
                      
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
