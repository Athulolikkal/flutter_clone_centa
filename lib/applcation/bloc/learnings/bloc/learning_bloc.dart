import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_learning_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../domain/models/home_screen.dart';

part 'learning_event.dart';
part 'learning_state.dart';

part 'learning_bloc.freezed.dart';

class LearningBloc extends Bloc<LearningEvent, LearningState> {
  final ILearningRepo _learningRepo;
  LearningBloc(this._learningRepo) : super(LearningState.initial()) {
    on<_GetAllLearnings>((event, emit) async {
      emit(state.copyWith(isLoading: true, learingSuccessOrFalse: none()));

      final Either<MainFailure, List<List<HomeScreenData>>>
          learingDetailsFetchData = await _learningRepo.getAllLearnings();
      emit(learingDetailsFetchData.fold(
          (failure) => state.copyWith(
              isLoading: false, learingSuccessOrFalse: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              learnings: success,
              learingSuccessOrFalse: Some(right(success)))));
    });
  }
}
