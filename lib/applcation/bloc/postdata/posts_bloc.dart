import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_posts_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/postScreen/post_screen.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final IPostRepo _postRepo;
  PostsBloc(this._postRepo) : super(PostsState.initial()) {
    on<_GetAllActivePosts>((event, emit) async {
//At initial time changing the status fo loading to true
      emit(state.copyWith(isLoading: true, postsFailureOrSuccess: none()));
//calling the function to fetch the all active posts
      final Either<MainFailure, List<PostsData>> postDetailsFetchDetails =
          await _postRepo.getAllActivePosts();
//checking the response and emit the status according to the response
//here we have two responses one is left value (mainFailure)   and right value is posts
//first one is left value we changed the name to failure same like success
      emit(
        //response type is either so we want to use fold
        postDetailsFetchDetails.fold(
          //if it is left one ie, failure then we are emiting the items in the bloc
          //passing response value of failure to left side (we assigned left side for MainFailure so)
          (failure) => state.copyWith(
            isLoading: false,
            postsFailureOrSuccess: Some(left(failure)),
          ),
          //if it is right one, ie success then we are emiting items in the bloc
          //passing response value of success to right side (right we assigned for success response)
          (success) => state.copyWith(
            isLoading: false,
            posts: success,
            postsFailureOrSuccess: some(right(success)),
          ),
        ),
      );
    });
  }
}
