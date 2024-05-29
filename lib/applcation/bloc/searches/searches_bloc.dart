import 'package:bloc/bloc.dart';
import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_search_screen_repo.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'searches_event.dart';
part 'searches_state.dart';
part 'searches_bloc.freezed.dart';

@injectable
class SearchesBloc extends Bloc<SearchesEvent, SearchesState> {
  final ISearchesRepo _searchRepo;
  SearchesBloc(this._searchRepo) : super(SearchesState.initial()) {
    on<_GetAllSearchItems>((event, emit) async {
      emit(
        state.copyWith(
            isLoading: true,
            searchesSuccessOrFailure: none(),
            isSearchEmpty: event.searchParams.isEmpty),
      );
      final Either<MainFailure, List<HomeScreenData>> searchFetchDetails =
          await _searchRepo.getAllSearchItems(event.searchParams);
      emit(searchFetchDetails.fold(
          (failure) => state.copyWith(
              isLoading: false, searchesSuccessOrFailure: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              searchDetails: success,
              searchesSuccessOrFailure: Some(right(success)))));
    });

    on<_ResetSearchState>(((event, emit) async {
      emit(SearchesState.initial());
    }));
  }
}
