part of 'learning_bloc.dart';

@freezed
class LearningState with _$LearningState {
  const factory LearningState(
      {
      required bool isLoading,
      required List<List<HomeScreenData>> learnings,
      required Option<Either<MainFailure, List<List<HomeScreenData>>>>
          learingSuccessOrFalse
          }
          ) = _LearningState;

  factory LearningState.initial() {
    return const LearningState(
      isLoading: false,
      learnings: [],
      learingSuccessOrFalse: None(),
    );
  }
}
