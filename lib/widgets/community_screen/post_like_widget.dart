import 'package:flutter/material.dart';

class PostLikeWidget extends StatelessWidget {
  const PostLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              print('like');
            },
            icon: const Row(
              children: [
                const Icon(Icons.favorite_outline,color: Colors.grey,),
                const SizedBox(width: 1),
                Text('5',style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              print('message');
            },
            icon: Row(
              children: [
                const Icon(Icons.messenger_outline_outlined ,color: Colors.grey),
                const SizedBox(width: 5),
                // Text("100"),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              print('share');
            },
            icon: const Icon(Icons.share_outlined,color: Colors.grey),
          ),
          IconButton(
            onPressed: () {
              print('more');
            },
            icon: const Icon(Icons.more_horiz_outlined,color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
