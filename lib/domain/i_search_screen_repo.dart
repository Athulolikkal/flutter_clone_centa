import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:dartz/dartz.dart';

abstract class ISearchesRepo {
  Future<Either<MainFailure, List<HomeScreenData>>> getAllSearchItems(String searchParams);

}
