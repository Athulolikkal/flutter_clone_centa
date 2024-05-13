part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required bool isLoading,
    required  List<List<HomeScreenData>> homeScreenData,
    required Option<Either<MainFailure, List<List<HomeScreenData>>>>
        homeScreeenFailureOrSuccessOption,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() {
    return const HomeScreenState(
      isLoading: false,
      homeScreenData:[],
      homeScreeenFailureOrSuccessOption: None(),
    );
  }
}
