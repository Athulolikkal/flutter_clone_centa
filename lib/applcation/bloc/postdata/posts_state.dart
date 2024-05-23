part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState(
      {required bool isLoading,
      required List<PostsData> posts,
      required Option<Either<MainFailure, List<PostsData>>>
          postsFailureOrSuccess}) = _PostsState;

  factory PostsState.initial() {
    return const PostsState(
      isLoading: false,
      posts: [],
      postsFailureOrSuccess: None(),
    );
  }
}
