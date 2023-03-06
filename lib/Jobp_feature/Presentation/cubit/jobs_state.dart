part of 'jobs_cubit.dart';

abstract class JobsState extends Equatable {
  const JobsState();

  @override
  List<Object> get props => [];
}

class JobsInitial extends JobsState {}
class JobsLoading extends JobsState {}
class JobsSuccess extends JobsState {}
class JobsFail extends JobsState {
  final String message;

 const JobsFail(this.message);
}