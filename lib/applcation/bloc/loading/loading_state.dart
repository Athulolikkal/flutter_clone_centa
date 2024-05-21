part of 'loading_bloc.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState({
    required bool isLoading,
  }) = _LoadingState;
  factory LoadingState.initial() {
    return const LoadingState(isLoading: false);
  }
}
