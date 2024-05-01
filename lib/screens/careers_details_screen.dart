import 'package:centa_clone/widgets/careers_widgets/job_card.dart';
import 'package:flutter/material.dart';

class CareerDetailsScreen extends StatefulWidget {
  final Map careerInfo;
  const CareerDetailsScreen({super.key, required this.careerInfo});

  @override
  State<CareerDetailsScreen> createState() => _CareerDetailsScreenState();
}

class _CareerDetailsScreenState extends State<CareerDetailsScreen> {
  bool saved = false;
  List<String> duties = [
    "Organize classroom lectures and coursework",
    "Prepare materials and activities",
    "Assign homework and interesting exercising",
    "Manage classroom crises and resolve conflict"
  ];
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
        ],
      ),
      body: SizedBox(
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
            DraggableScrollableSheet(
                initialChildSize: 0.75,
                minChildSize: 0.75,
                builder: (context, controller) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    //first section
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: ListView(
                        controller: controller,
                        children: [
                          Text(
                            widget.careerInfo['title'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.careerInfo['sub_title'],
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 134, 134, 134)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.work_outline_sharp,
                                  color: Color.fromARGB(255, 87, 87, 87),
                                  size: 22,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${widget.careerInfo['experience']} experience",
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.date_range_sharp,
                                color: Color.fromARGB(255, 87, 87, 87),
                                size: 22,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Apply by ${widget.careerInfo['apply_by']}",
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Divider(
                              color: Color.fromARGB(255, 208, 206, 206),
                              thickness: 1,
                            ),
                          ),
                          //second section
                          const Text(
                            'About the Job',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Visibility(
                            visible: widget.careerInfo['location'] != null
                                ? true
                                : false,
                            child: Row(
                              children: [
                                const Text(
                                  'Location:  ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("${widget.careerInfo['location']}",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Experience
                          const Text(
                            'Experience :',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '1. Min. 03 yrs of teaching in CBSE Schools for Grade VII to X',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Duties
                          const Text(
                            'Duties & Responsibilities',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          for (int i = 0; i < duties.length; i++)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: Text(
                                "${i + 1} . ${duties[i]}",
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                          //About Institute
                          const Text(
                            'About the Institute',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. ",
                                style: TextStyle(fontSize: 14),
                                ),
                         
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Who can apply
                          const Text(
                            'Who can apply',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: JobCard.descriptionList(
                                context, ['Middle School']),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Number of Openings
                          const Text(
                            'Number of Openings',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${widget.careerInfo['total_openings']}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 67, 163, 242)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                minimumSize: MaterialStateProperty.all(const Size(120, 50)),
              ),
              child: const Text('Apply',style: TextStyle(fontSize: 18),),
            ),
          )),
    );
  }
}
