import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/models/postScreen/post_screen.dart';
import 'package:dartz/dartz.dart';

abstract class IPostRepo{
  Future<Either<MainFailure,List<PostsData>>> getAllActivePosts();
}