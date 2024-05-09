part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState{
  const factory HomeScreenState({
   required bool isLoading,
    List<HomeScreenData>? homeScreenData, 
    required Option<Either<MainFailure,List<HomeScreenData>>> homeScreeenFailureOrSuccessOption,
  })= _HomeScreenState;

  factory HomeScreenState.inital(){
    return HomeScreenState(
      isLoading: false,
      homeScreeenFailureOrSuccessOption: None()
    );
  }
}