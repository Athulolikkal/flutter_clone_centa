import 'package:flutter/material.dart';

class PostLikeWidget extends StatefulWidget {
  int totalLikes;
  PostLikeWidget({super.key, required this.totalLikes});

  @override
  State<PostLikeWidget> createState() => _PostLikeWidgetState();
}

class _PostLikeWidgetState extends State<PostLikeWidget> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                liked = !liked;
                if (liked) widget.totalLikes++;
                if (!liked) widget.totalLikes--;
              });
            },
            icon: Row(
              children: [
                Icon(
                  liked ? Icons.favorite : Icons.favorite_outline,
                  color: liked
                      ? const Color.fromARGB(255, 79, 167, 239)
                      : Colors.grey,
                ),
                const SizedBox(width: 1),
                widget.totalLikes != 0
                    ? Text(
                        '${widget.totalLikes}',
                        style: const TextStyle(color: Colors.grey),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              print('message');
            },
            icon: const Row(
              children: [
                Icon(Icons.messenger_outline_outlined, color: Colors.grey),
                SizedBox(width: 5),
                // Text("100"),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              print('share');
            },
            icon: const Icon(Icons.share_outlined, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {
              print('more');
            },
            icon: const Icon(Icons.more_horiz_outlined, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
