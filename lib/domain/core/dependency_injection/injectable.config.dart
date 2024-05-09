// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:centa_clone/applcation/bloc/home_screen/home_screen_bloc.dart'
    as _i5;
import 'package:centa_clone/domain/i_home_screen_repo.dart' as _i3;
import 'package:centa_clone/infrastructure/home_screen/home_screen_repo.dart'
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
    gh.lazySingleton<_i3.IHomeScreenRepo>(() => _i4.HomeScreenRepository());
    gh.factory<_i5.HomeScreenBloc>(
        () => _i5.HomeScreenBloc(gh<_i3.IHomeScreenRepo>()));
    return this;
  }
}
