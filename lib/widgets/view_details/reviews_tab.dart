import 'package:centa_clone/data/comments.dart';
import 'package:centa_clone/widgets/view_details/review/review_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsTab extends StatelessWidget {
  final double rating;
  const ReviewsTab({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ReviewRatingWidget(
            rating: rating,
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 120, 185, 241),
                        radius: 25,
                        backgroundImage: usersComment[index]['profile'] != ''
                            ? NetworkImage(usersComment[index]['profile'])
                            : null,
                        child: usersComment[index]['profile'] == ''
                            ? const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              )
                            : null,
                      ),
                      title: Text(
                        usersComment[index]['name'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        usersComment[index]['date'],
                      ),
                      trailing: RatingBar.builder(
                      initialRating: usersComment[index]['rating'],
                      minRating: 1,
                      direction: Axis.horizontal,
                      ignoreGestures: true,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                     
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(usersComment[index]['comment']),
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemCount: usersComment.length)
        ],
      ),
    );
  }
}
