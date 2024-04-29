import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CareerDetailsScreen extends StatefulWidget {
  final Map careerInfo;
  const CareerDetailsScreen({super.key, required this.careerInfo});

  @override
  State<CareerDetailsScreen> createState() => _CareerDetailsScreenState();
}

class _CareerDetailsScreenState extends State<CareerDetailsScreen> {
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.keyboard_arrow_left,
                size: 30,
              )),
          actions: [
            const SizedBox(
              width: 30,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  saved = !saved;
                });
              },
              icon: !saved
                  ? const Icon(
                      Icons.bookmark_outline,
                      size: 28,
                    )
                  : const Icon(
                      Icons.bookmark,
                      color: Color.fromARGB(255, 116, 185, 241),
                      size: 28,
                    ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.share_outlined)),
          ],
        ),
        body: SafeArea(
            child: SizedBox(
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  widget.careerInfo['profile'],
                  fit: BoxFit.fill,
                ),
              ),
              DraggableScrollableSheet(builder: (context,controller){
                 initialChildSize: MediaQuery.of(context).size.height-200 ; // Adjust to match the height of the image
                minChildSize:  800;
                return Container(
                    // height: MediaQuery.of(context).size.height - 250,
                       decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.blue),
                child: ListView(
                 controller: controller,
                  children: [
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ],
                ),
                );
              })
            ],
          ),
        )));
  }
}
