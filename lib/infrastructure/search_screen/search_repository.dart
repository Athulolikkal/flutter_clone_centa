import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_search_screen_repo.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/gql/query/course.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISearchesRepo)
class SearchRepository implements ISearchesRepo {
  @override
  Future<Either<MainFailure, List<HomeScreenData>>> getAllSearchItems(
      String searchParams) async {
    try {
      if (searchParams.isNotEmpty || searchParams != null) {
        final List<dynamic> searchedDetails =
            await GraphQlQueryCourseDetailsServices()
                .getSearchedCourses(searchParams);
        if(searchedDetails.isEmpty){
          return  const Right([]);
        }
        if (searchedDetails[0]['error'] != null &&
            searchedDetails[0]['error'] == true) {
          if (searchedDetails[0]['exception'] != null &&
              searchedDetails[0]['exception'] == true) {
            return const Left(MainFailure.serverFailure());
          } else {
            return const Left(MainFailure.clientFailure());
          }
        } else {
          // print("Searched-Details 2: $searchedDetails");
          if (searchedDetails.isNotEmpty) {
            final List<HomeScreenData> searchedItems = (searchedDetails as List)
                .map((e) => HomeScreenData.fromJson(e))
                .toList();

            return Right(searchedItems);
          } else {
            print('Searched-Details empty');
            return const Right([]);
          }
        }
      }return const Left(MainFailure.clientFailure());
    } catch (err) {
      print(err);
      return const Left(MainFailure.clientFailure());
    }
  }
}
