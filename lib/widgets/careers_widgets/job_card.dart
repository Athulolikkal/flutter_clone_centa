import 'package:centa_clone/screens/careers_details_screen.dart';
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final jobInfo;
  const JobCard({super.key, required this.jobInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CareerDetailsScreen(
                careerInfo: jobInfo,
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 220,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color.fromARGB(255, 219, 218, 218),
                width: 1.0,
              )),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  jobInfo['title'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                ),
                subtitle: Text(
                  jobInfo['sub_title'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                   style: const TextStyle(fontSize: 12),
                ),
                trailing: SizedBox(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.network(
                        jobInfo['profile'],
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent? laodingProgress) {
                          if (laodingProgress == null) {
                            return Image.network(
                              jobInfo['profile'],
                              fit: BoxFit.contain,
                            );
                          } else {
                            return const SizedBox(
                              height: 25,
                              width: 25,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircularProgressIndicator(
                                  strokeWidth: 4,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Color.fromARGB(255, 94, 177, 244),
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        // fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 1.5,
                  color:Color.fromARGB(255, 219, 218, 218),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.work,
                      color: Color.fromARGB(255, 100, 100, 100),
                      size: 22,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "${jobInfo['experience']} experience",
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical:2 ),
                child: descriptionList(context, jobInfo['description']),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'View Details',
                      style: TextStyle(color: Colors.blue,fontSize: 12),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  static Widget descriptionList(BuildContext cntx, List jobDescription) {
  return SizedBox(
    height: 45,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: jobDescription.length,
      itemBuilder: (BuildContext cntx, int index) {
        return Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 202, 199, 199)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(jobDescription[index],style: TextStyle(fontSize: 12),)),
          ),
        );
      },
    ),
  );
}
}

