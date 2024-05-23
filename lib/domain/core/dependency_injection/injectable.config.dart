// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:centa_clone/applcation/bloc/home_screen/home_screen_bloc.dart'
    as _i14;
import 'package:centa_clone/applcation/bloc/learnings/bloc/learning_bloc.dart'
    as _i9;
import 'package:centa_clone/applcation/bloc/loading/loading_bloc.dart' as _i12;
import 'package:centa_clone/applcation/bloc/postdata/posts_bloc.dart' as _i13;
import 'package:centa_clone/domain/i_home_screen_repo.dart' as _i7;
import 'package:centa_clone/domain/i_learning_repo.dart' as _i3;
import 'package:centa_clone/domain/i_loading_repo.dart' as _i10;
import 'package:centa_clone/domain/i_posts_repo.dart' as _i5;
import 'package:centa_clone/infrastructure/home_screen/home_screen_repo.dart'
    as _i8;
import 'package:centa_clone/infrastructure/learning/learing_screen_repository.dart'
    as _i4;
import 'package:centa_clone/infrastructure/loading_widget/loading_repository.dart'
    as _i11;
import 'package:centa_clone/infrastructure/post_screen/post_repository.dart'
    as _i6;
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
    gh.lazySingleton<_i3.ILearningRepo>(() => _i4.LearningRepository());
    gh.lazySingleton<_i5.IPostRepo>(() => _i6.PostsRepository());
    gh.lazySingleton<_i7.IHomeScreenRepo>(() => _i8.HomeScreenRepository());
    gh.factory<_i9.LearningBloc>(
        () => _i9.LearningBloc(gh<_i3.ILearningRepo>()));
    gh.lazySingleton<_i10.ILoadingRepo>(() => _i11.LoadingRepository());
    gh.factory<_i12.LoadingBloc>(
        () => _i12.LoadingBloc(gh<_i10.ILoadingRepo>()));
    gh.factory<_i13.PostsBloc>(() => _i13.PostsBloc(gh<_i5.IPostRepo>()));
    gh.factory<_i14.HomeScreenBloc>(
        () => _i14.HomeScreenBloc(gh<_i7.IHomeScreenRepo>()));
    return this;
  }
}
