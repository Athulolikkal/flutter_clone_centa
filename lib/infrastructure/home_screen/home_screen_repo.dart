//all business logics are written in infrastructure
import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_home_screen_repo.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/gql/query/course.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeScreenRepo)
class HomeScreenRepository implements IHomeScreenRepo {
  @override
  Future<Either<MainFailure, List<HomeScreenData>>>
      getAutoScrollDataInformation() async {
    try {
      final List<dynamic> response =
          await GraphQlQueryCourseDetailsServices().getAllCourses();

      if (response[0]['error'] == true) {
        return const Left(MainFailure.serverFailure());
      } else {
        final homeDataList = (response as List).map((e) {
          return HomeScreenData.fromJson(e);
        }).toList();

        // final List<HomeScreenData> homeDataList = [];
        // for (final raw in response) {
        //   print("$raw, each ");
        //   homeDataList
        //       .add(HomeScreenData.fromJson(raw as Map<String, dynamic>));
        // }
        print(homeDataList);
        return Right(homeDataList);
      }
    } catch (err) {
      print(err);
      return const Left(MainFailure.clientFailure());
    }
  }
}
