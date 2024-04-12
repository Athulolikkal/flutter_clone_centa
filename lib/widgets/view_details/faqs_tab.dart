import 'package:centa_clone/data/comments.dart';
import 'package:flutter/material.dart';

class FaqsTab extends StatelessWidget {
  const FaqsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionTile(
              title: Text(
                FaqsData[index]['Questions'],
                style: const TextStyle(
                    color: Color.fromARGB(255, 67, 163, 241),
                    fontWeight: FontWeight.bold),
              ),
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                ),
                borderRadius: BorderRadius.zero,
              ),
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    FaqsData[index]['Answers'],
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: FaqsData.length),
    );
  }
}
