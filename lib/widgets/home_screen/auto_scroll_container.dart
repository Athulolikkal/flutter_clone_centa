import 'package:centa_clone/data/auto_scroll_container_data.dart';
import 'package:flutter/material.dart';

class AutoScrollContainerWidget extends StatelessWidget {
  const AutoScrollContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: autoScrollData.length,
          itemBuilder: (context, index) {
            return _buildContainer(autoScrollData[index], context);
          },
        ));
  }

  Widget _buildContainer(String assetImagePath, BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 194, 194, 194),
            border: Border.all(
              color: Color.fromARGB(255, 94, 93, 93),
              width: 1,
            ),
            image: DecorationImage(
              image: AssetImage(assetImagePath),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
