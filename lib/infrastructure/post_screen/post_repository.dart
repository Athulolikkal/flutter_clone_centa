import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_posts_repo.dart';
import 'package:centa_clone/domain/models/postScreen/post_screen.dart';
import 'package:centa_clone/gql/query/post.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: IPostRepo)
class PostsRepository implements IPostRepo {
  @override
  Future<Either<MainFailure, List<PostsData>>> getAllActivePosts() async {
    try {
      final List<Map> allPostResponse =
          await GraphQlQueryPostServices().fetchAllActivePosts(true);

      if (allPostResponse[0]['error'] != null &&
          allPostResponse[0]['error'] == true) {
        if (allPostResponse[0]['exception'] != null &&
            allPostResponse[0]['exception'] == true) {
          return const Left(MainFailure.serverFailure());
        } else {
          return const Left(MainFailure.clientFailure());
        }
      } else {
        if (allPostResponse.isNotEmpty) {
         
          final List<PostsData> allPosts = (allPostResponse as List)
              .map((e) => PostsData.fromJson(e))
              .toList();

          return Right(allPosts);
        }
        return const Left(MainFailure.serverFailure());
      }
    } catch (err) {
      print("$err - error from infra");
      return const Left(MainFailure.clientFailure());
    }
  }
}
