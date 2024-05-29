part of 'searches_bloc.dart';

@freezed
class SearchesEvent with _$SearchesEvent{
  const factory SearchesEvent.getAllSearchItems(String searchParams)=_GetAllSearchItems;
  const factory SearchesEvent.resetSearchState() = _ResetSearchState;
}
