import 'package:centa_clone/domain/core/failures/main_failures.dart';
import 'package:centa_clone/domain/i_learning_repo.dart';
import 'package:centa_clone/domain/models/home_screen.dart';
import 'package:dartz/dartz.dart';

class LearningRepository implements ILearningRepo{
  @override
  Future<Either<MainFailure, List<List<HomeScreenData>>>> getAllLearnings() {
   try{

   }catch(err){
    print(err);
    // return Left(MainFailure.clientFailure());
   }
  }

}