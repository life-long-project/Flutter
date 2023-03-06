import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/usecase/base_usecase.dart';
import '../../domain/use case/getjob.dart';

part 'jobs_state.dart';

class JobsCubit extends Cubit<JobsState> {
  final GetJobsUsecase getjobusecase;
  JobsCubit(this.getjobusecase) : super(JobsInitial());

  //usecase to provide logic of ui in presentation layer
  void getJobs() async {
    emit(JobsLoading());
    final result = await getjobusecase(const NoParameters());
    result.fold((l) => emit(JobsFail(l.message)), (r) => 
    emit(JobsSuccess()));
  }
}
