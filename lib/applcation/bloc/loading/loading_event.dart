
part of 'loading_bloc.dart';



@freezed
class LoadingEvent with _$LoadingEvent {
  const factory LoadingEvent.setLoading()=_SetLoading;
  const factory LoadingEvent.setNotLoading()=_SetNotLoading;
}
