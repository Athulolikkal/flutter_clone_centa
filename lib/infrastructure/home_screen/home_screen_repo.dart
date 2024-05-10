//all business logics are written in infrastructure
import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_home_screen_repo.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/gql/query/course.dart';
import 'package:centa_clone/services/find_randum_index.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeScreenRepo)
class HomeScreenRepository implements IHomeScreenRepo {
  @override
  Future<Either<MainFailure, List<List<HomeScreenData>>>>
      getAutoScrollDataInformation() async {
    try {
      final List<dynamic> response =
          await GraphQlQueryCourseDetailsServices().getAllCourses();

      if (response[0]['error'] == true) {
        return const Left(MainFailure.serverFailure());
      } else {
        //finding all the webinars
        final allWebinars =
            response.where((course) => course['type'] == 'webinar').toList();
        //finding all the courses
        final allCourses = response
            .where((course) => course['type'] != 'webinar')
            .toList()
          ..sort((a, b) => b['searches'].compareTo(a['searches']));
        int firstIndexWebinar =
            await getRandomNumberExcept(allWebinars.length, null);
        int secondIndexWebinar =
            await getRandomNumberExcept(allWebinars.length, firstIndexWebinar);
        int indexFromAllCourses =
            getRandomNumberExcept(allCourses.length, null);
        //Auto scroll details data with random webinars and courses
        final List autoScrollDetails = [
          allWebinars[firstIndexWebinar],
          allWebinars[secondIndexWebinar],
          allCourses[indexFromAllCourses],
        ];
        //trending course details
        final trendingDetails = allCourses.sublist(0, 6);

        //recommandation courses details
        final List remainingCourses = allCourses.where((course) {
          return !autoScrollDetails.contains(course) &&
              !trendingDetails.contains(course);
        }).toList();

        final List<HomeScreenData> autoScrollData = (autoScrollDetails as List).map((e) {
          return HomeScreenData.fromJson(e);
        }).toList();
        final List<HomeScreenData> trendingData = (trendingDetails as List).map((e) {
          return HomeScreenData.fromJson(e);
        }).toList();
        final List<HomeScreenData> recommendedData = (remainingCourses as List).map((e) {
          return HomeScreenData.fromJson(e);
        }).toList();

        // final List<HomeScreenData> homeDataList = [];
        // for (final raw in response) {
        //   print("$raw, each ");
        //   homeDataList
        //       .add(HomeScreenData.fromJson(raw as Map<String, dynamic>));
        // }
        // print(homeDataList);
        return Right([autoScrollData, trendingData, recommendedData]);
      }
    } catch (err) {
      print(err);
      return const Left(MainFailure.clientFailure());
    }
  }
}
