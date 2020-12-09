import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class LatestJobsEntities extends Equatable {
  final String jobId;
  final String jobName;
  final String jobType;
  //final String jobStatus;

  LatestJobsEntities({
    @required this.jobId,
    @required this.jobName,
    @required this.jobType,
    //@required this.jobStatus,
  });

  @override
  List<Object> get props => [jobId, jobName, jobType];
}
