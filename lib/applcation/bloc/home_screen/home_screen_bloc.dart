import 'package:bloc/bloc.dart';
import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_home_screen_repo.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

@injectable
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final IHomeScreenRepo _homeScreenRepo;
  HomeScreenBloc(this._homeScreenRepo) : super(HomeScreenState.initial()) {
    on<_GetAutoScrollDataInformation>((event, emit) async {
      //changing the status to loading
      emit(
        state.copyWith(
          isLoading: true,
          
          homeScreeenFailureOrSuccessOption: none(),
        ),
      );

      final Either<MainFailure, List<List<HomeScreenData>>> homeScreenFetchedData =
          await _homeScreenRepo.getAutoScrollDataInformation();

      //using fold to check the response if there is either option!
      emit(homeScreenFetchedData.fold(
          //if faliure came then
          (failure) => state.copyWith(
                isLoading: false,
               
                //It is faliure(left option) so something in the left option,
                //So we assigning what we got from that option to that variable,
                homeScreeenFailureOrSuccessOption: Some(left(failure)),
              ),
          //if success came then
          (success) => state.copyWith(
                isLoading: false,
                
                //success response is list of homescreen data
                //So we assigning the success value to home screen data variable
                homeScreenData: success,
                homeScreeenFailureOrSuccessOption: Some(right(success)),
              )));
    });
  }
}
