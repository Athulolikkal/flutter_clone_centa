// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:centa_clone/applcation/bloc/home_screen/home_screen_bloc.dart'
    as _i17;
import 'package:centa_clone/applcation/bloc/learnings/bloc/learning_bloc.dart'
    as _i11;
import 'package:centa_clone/applcation/bloc/loading/loading_bloc.dart' as _i15;
import 'package:centa_clone/applcation/bloc/postdata/posts_bloc.dart' as _i16;
import 'package:centa_clone/applcation/bloc/searches/searches_bloc.dart'
    as _i14;
import 'package:centa_clone/domain/i_home_screen_repo.dart' as _i9;
import 'package:centa_clone/domain/i_learning_repo.dart' as _i5;
import 'package:centa_clone/domain/i_loading_repo.dart' as _i12;
import 'package:centa_clone/domain/i_posts_repo.dart' as _i7;
import 'package:centa_clone/domain/i_search_screen_repo.dart' as _i3;
import 'package:centa_clone/infrastructure/home_screen/home_screen_repo.dart'
    as _i10;
import 'package:centa_clone/infrastructure/learning/learing_screen_repository.dart'
    as _i6;
import 'package:centa_clone/infrastructure/loading_widget/loading_repository.dart'
    as _i13;
import 'package:centa_clone/infrastructure/post_screen/post_repository.dart'
    as _i8;
import 'package:centa_clone/infrastructure/search_screen/search_repository.dart'
    as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ISearchesRepo>(() => _i4.SearchRepository());
    gh.lazySingleton<_i5.ILearningRepo>(() => _i6.LearningRepository());
    gh.lazySingleton<_i7.IPostRepo>(() => _i8.PostsRepository());
    gh.lazySingleton<_i9.IHomeScreenRepo>(() => _i10.HomeScreenRepository());
    gh.factory<_i11.LearningBloc>(
        () => _i11.LearningBloc(gh<_i5.ILearningRepo>()));
    gh.lazySingleton<_i12.ILoadingRepo>(() => _i13.LoadingRepository());
    gh.factory<_i14.SearchesBloc>(
        () => _i14.SearchesBloc(gh<_i3.ISearchesRepo>()));
    gh.factory<_i15.LoadingBloc>(
        () => _i15.LoadingBloc(gh<_i12.ILoadingRepo>()));
    gh.factory<_i16.PostsBloc>(() => _i16.PostsBloc(gh<_i7.IPostRepo>()));
    gh.factory<_i17.HomeScreenBloc>(
        () => _i17.HomeScreenBloc(gh<_i9.IHomeScreenRepo>()));
    return this;
  }
}
