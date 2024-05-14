import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_learning_repo.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:centa_clone/gql/query/course.dart';
import 'package:centa_clone/services/date_parsing.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILearningRepo)
class LearningRepository implements ILearningRepo {
  @override
  Future<Either<MainFailure, List<List<HomeScreenData>>>>
      getAllLearnings() async {
    try {
      final List selfPacedCoursesResponse =
          await GraphQlQueryCourseDetailsServices()
              .getCoursesTagWise('Self Paced Courses');

      final List freeResourcesResponse =
          await GraphQlQueryCourseDetailsServices()
              .getCoursesTagWise('Free Resource');
      final List experMasterClassResponse =
          await GraphQlQueryCourseDetailsServices()
              .getCoursesTagWise('Expert Masterclass');
      final List microResourcesResponse =
          await GraphQlQueryCourseDetailsServices()
              .getCoursesTagWise('Learning Products');
      if (selfPacedCoursesResponse[0]['error'] == true ||
          freeResourcesResponse[0]['error'] == true ||
          experMasterClassResponse[0]['error'] == true ||
          microResourcesResponse[0]['error'] == true) {
        return const Left(MainFailure.serverFailure());
      } else {
        if (selfPacedCoursesResponse.isNotEmpty &&
            freeResourcesResponse.isNotEmpty &&
            experMasterClassResponse.isNotEmpty &&
            microResourcesResponse.isNotEmpty) {
          final updatedSelfPacedCourses =
              await updateTheCourseData(selfPacedCoursesResponse);
          final updatedFreeResourcesCourses =
              await updateTheCourseData(freeResourcesResponse);
          final updatedExpertMasterClassCourses =
              await updateTheCourseData(experMasterClassResponse);
          final updatedMicroResourcesCourses =
              await updateTheCourseData(microResourcesResponse);
          final List<HomeScreenData> selfPacedCourses = updatedSelfPacedCourses
              .map((e) => HomeScreenData.fromJson(e))
              .toList();
          final List<HomeScreenData> freeResourcesCourses =
              updatedFreeResourcesCourses
                  .map((e) => HomeScreenData.fromJson(e))
                  .toList();
          final List<HomeScreenData> expertMasterClassCourses =
              updatedExpertMasterClassCourses
                  .map((e) => HomeScreenData.fromJson(e))
                  .toList();
          final List<HomeScreenData> microResourcesCourses =
              updatedMicroResourcesCourses
                  .map((e) => HomeScreenData.fromJson(e))
                  .toList();
          return Right([
            selfPacedCourses,
            freeResourcesCourses,
            expertMasterClassCourses,
            microResourcesCourses
          ]);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      }
    } catch (err) {
      print(err);
      return const Left(MainFailure.clientFailure());
    }
  }
}
