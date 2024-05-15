import 'package:centa_clone/data/community_data.dart';
import 'package:flutter/material.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({Key? key});

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
                      backgroundImage: NetworkImage(
                        communityPost[index]['profile_img'],
                      ),
                      radius: 25,
                    ),
                    title: Text(
                      communityPost[index]['user_name'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text("${communityPost[index]['time_ago']} ago"),
                  ),
                  // Only show details when image is loaded
                  Image.network(
                    communityPost[index]['profile_img'],
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(23.0),
                              child: SelectableText(
                                communityPost[index]['content'],
                                style: const TextStyle(fontSize: 15),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    print('like');
                                  },
                                  icon: Row(
                                    children: [
                                      const Icon(Icons.thumb_up_alt_outlined),
                                      const SizedBox(width: 5),
                                      Text(communityPost[index]['likes']),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    print('message');
                                  },
                                  icon: Row(
                                    children: [
                                      const Icon(Icons.message_outlined),
                                      const SizedBox(width: 5),
                                      Text(
                                          "${communityPost[index]['comments']}"),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    print('share');
                                  },
                                  icon: const Icon(Icons.share_outlined),
                                ),
                                IconButton(
                                  onPressed: () {
                                    print('more');
                                  },
                                  icon: const Icon(Icons.more_horiz_outlined),
                                ),
                              ],
                            ),
                          ],
                        );
                      } else {
                        return const Align(
                            alignment: Alignment.center,
                            child: Text('loading...'));
                        // return const CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: communityPost.length,
      ),
    );
  }
}

// import 'package:centa_clone/data/community_data.dart';
// import 'package:flutter/material.dart';

// class ExploreWidget extends StatelessWidget {
//   const ExploreWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: ListView.separated(
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Container(
//                   color: Colors.white,
//                   child: Column(
//                     children: [
//                       ListTile(
//                         leading: CircleAvatar(
//                           backgroundImage:
//                               NetworkImage(communityPost[index]['profile_img']),
//                           radius: 25,
//                         ),
//                         title: Text(
//                           communityPost[index]['user_name'],
//                           style: const TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.w500),
//                         ),
//                         subtitle:
//                             Text("${communityPost[index]['time_ago']} ago"),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(23.0),
//                         child: Text(
//                           communityPost[index]['content'],
//                           style: const TextStyle(fontSize: 15),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 print('like');
//                               },
//                               icon: Row(
//                                 children: [
//                                   const Icon(Icons.thumb_up_alt_outlined),
//                                   const SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text(communityPost[index]['likes'])
//                                 ],
//                               )),
//                           IconButton(
//                             onPressed: () {
//                               print('message');
//                             },
//                             icon: Row(
//                               children: [
//                                   const Icon(Icons.message_outlined),
//                                    const SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text("${communityPost[index]['comments']}")
//                               ],
//                             ),
//                           ),
//                           IconButton(
//                               onPressed: () {
//                                 print('share');
//                               },
//                               icon: const Icon(Icons.share_outlined)),
//                           IconButton(
//                               onPressed: () {
//                                 print('more');
//                               },
//                               icon: const Icon(Icons.more_horiz_outlined)),
//                         ],
//                       )
//                     ],
//                   ),
//                 ));
//           },
//           separatorBuilder: (context, index) {
//             return const Divider();
//           },
//           itemCount: communityPost.length),
//     );
//   }
// }
