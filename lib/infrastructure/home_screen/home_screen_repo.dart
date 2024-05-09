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
  Future<Either<MainFailure, List<HomeScreenData>>>getAutoScrollDataInformation()async {
    try {
       final List<Map<String, dynamic>> response = await GraphQlQueryCourseDetailsServices().getAllCourses();
       print("response $response");
       if(response[0]['error']==true){
        return const Left(MainFailure.serverFailure());
       }else{
        final List<HomeScreenData> homeDataList=[];
        for(final raw in response){
          homeDataList.add(HomeScreenData.fromJson(raw as Map<String,dynamic>));
        }
        print("home data list${homeDataList}");
        return  Right(homeDataList);
        
       }

    } catch (err) {
      print(err);
       return const Left(MainFailure.clientFailure());
    }
  }
}
