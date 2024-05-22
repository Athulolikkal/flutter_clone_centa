import 'package:centa_clone/domain/i_loading_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoadingRepo)
class LoadingRepository implements ILoadingRepo {
  @override
  Future<bool> setLoading() async {
    return true;
  }

  @override
  Future<bool> setNotLoading() async {
    return false;
  }
}
