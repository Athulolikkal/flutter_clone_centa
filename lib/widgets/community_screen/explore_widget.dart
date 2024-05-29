import 'package:centa_clone/applcation/bloc/postdata/posts_bloc.dart';
import 'package:centa_clone/data/community_data.dart';
import 'package:centa_clone/widgets/community_screen/post_like_widget.dart';
import 'package:centa_clone/widgets/text_editor/quil_text_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<PostsBloc>(context)
          .add(const PostsEvent.getAllActivePosts());
    });
    Future<void> _refresh() async {
      return BlocProvider.of<PostsBloc>(context)
          .add(const PostsEvent.getAllActivePosts());
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          if (state.posts.isNotEmpty) {
            print(state.posts);
            return RefreshIndicator(
              onRefresh: _refresh,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 236, 234, 234),
                              radius: 25,
                              child: Icon(
                                Icons.person,
                                size: 50,
                                color: Color.fromARGB(255, 98, 175, 237),
                              ),
                            ),
                            title: Text(
                              'Athul Sabu',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            subtitle: Text(
                              "10min ago",
                              style: TextStyle(color: Colors.grey),
                            ),
                            // Text("${communityPost[index]['time_ago']} ago"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: QuilTextEditor(
                              textEditorContent: state.posts[index].content,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: PostLikeWidget(
                              totalLikes: state.posts[index].likes?.length ?? 0,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: state.posts.length,
              ),
            );
          } else if (state.isLoading) {
            return const Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 83, 168, 237),
                ),
              ),
            );
          } else {
            return const Center(
                child: Text(
              'Faild to fetch the posts',
              style: TextStyle(color: Color.fromARGB(255, 237, 77, 65)),
            ));
          }
        },
      ),
    );
  }
}
