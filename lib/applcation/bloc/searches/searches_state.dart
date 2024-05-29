part of 'searches_bloc.dart';

@freezed
class SearchesState with _$SearchesState {
  const factory SearchesState({
    required bool isLoading,
    required List<HomeScreenData> searchDetails,
    required bool isSearchEmpty,
    required Option<Either<MainFailure, List<HomeScreenData>>>
        searchesSuccessOrFailure, 

  }) = _SearchesState;
  factory SearchesState.initial() {
    return const SearchesState(
      isLoading: false,
      searchDetails: [],
      isSearchEmpty: true,
      searchesSuccessOrFailure: None(),
    );
  }
}
