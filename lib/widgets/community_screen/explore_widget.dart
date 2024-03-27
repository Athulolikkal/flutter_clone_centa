import 'package:centa_clone/data/community_data.dart';
import 'package:flutter/material.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(communityPost[index]['profile_img']),
                          radius: 30,
                        ),
                        title: Text(
                          communityPost[index]['user_name'],
                          style: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                        subtitle:
                            Text("${communityPost[index]['time_ago']} ago"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(23.0),
                        child: Text(
                          communityPost[index]['content'],
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                print('share');
                              },
                              icon:const Icon(Icons.thumb_up_alt_outlined)),
                          IconButton(
                              onPressed: () {
                                print('share');
                              },
                              icon:const Icon(Icons.message_outlined)),
                          IconButton(
                              onPressed: () {
                                print('share');
                              },
                              icon:const Icon(Icons.share_outlined)),
                          IconButton(
                              onPressed: () {
                                print('share');
                              },
                              icon:const Icon(Icons.more_horiz_outlined)),
                        ],
                      )
                    ],
                  ),
                ));
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: communityPost.length),
    );
  }
}
