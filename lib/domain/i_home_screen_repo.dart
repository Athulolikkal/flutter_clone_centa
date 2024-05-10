// This class is For What kinds of api calls will come 
import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeScreenRepo{
// Future<Either<MainFailure,List<HomeScreenData>>> getAutoScrollDataInformation();
Future<Either<MainFailure,List<List<HomeScreenData>>>> getAutoScrollDataInformation();
}