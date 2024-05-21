import 'package:bloc/bloc.dart';
import 'package:centa_clone/domain/i_loading_repo.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_event.dart';
part 'loading_state.dart';
part 'loading_bloc.freezed.dart';


class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
 final ILoadingRepo _loadingRepo;
 LoadingBloc(this._loadingRepo):super(LoadingState.initial()){
  on<_SetLoading>((event,emit)async{
emit(state.copyWith(isLoading:true));
  });
on<_SetNotLoading>((event,emit)async{
  emit(state.copyWith(isLoading:false));
});
 }}
