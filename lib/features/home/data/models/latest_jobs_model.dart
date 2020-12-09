import 'package:auth/features/home/domain/entities/latest_jobs_entities.dart';
import 'package:flutter/cupertino.dart';

class LatestJobsModel extends LatestJobsEntities {
  LatestJobsModel({
    @required String jobId,
    @required String jobName,
    @required String jobType,
    //@required String jonStatus,
  });

  @override
  List<Object> get props => [jobId, jobName, jobType];
}
