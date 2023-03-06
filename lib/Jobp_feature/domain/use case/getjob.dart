import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecase/base_usecase.dart';
import '../entities/jobs.dart';
import '../reposotrey/job_feature.dart';

class GetJobsUsecase extends BaseUseCase<List<Jobs>, NoParameters>{
  final BaseJobsReposotrey baserepo;

  GetJobsUsecase(this.baserepo);

  Future<Either<Failure, List<Jobs>>> excute(String word) async {
    return await baserepo.getJobsByName(word);
  }
  
  @override
  Future<Either<Failure, List<Jobs>>> call(NoParameters parameters)async {
    
    return await baserepo.getAllJobs();
  
   
  }

 
}
