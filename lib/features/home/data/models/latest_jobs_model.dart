import 'package:flutter/material.dart';

class LatestJobsModel {
  final String jobId;
  final String jobName;
  final String jobType;
  final String companyName;
  final String image;
  final String jobStatus;

  const LatestJobsModel(
      {@required this.jobId,
      @required this.jobName,
      @required this.jobType,
      @required this.image,
      @required this.companyName,
      @required this.jobStatus
      //@required String jonStatus,
      });

  @override
  List<Object> get props => [jobId, jobName, jobType, jobStatus];
}

const LATEST_JOBS = const [
  LatestJobsModel(
    jobId: 'j1',
    jobName: 'Sr, Ui Designer',
    jobType: 'Google, Full Time',
    image: 'assets/images/google.png',
    companyName: 'Google',
    jobStatus: 'Closed',
  ),
  LatestJobsModel(
    jobId: 'j2',
    jobName: 'Ui / Ux Designer',
    jobType: 'Mega Trust Full Time',
    image: 'assets/images/mega trust.png',
    companyName: 'Mega Trust',
    jobStatus: 'In Review',
  ),
  LatestJobsModel(
    jobId: 'j3',
    jobName: 'Flutter developer',
    jobType: 'Mega Trust Full Time',
    image: 'assets/images/mega trust 2.png',
    companyName: 'Mega Trust',
    jobStatus: 'In Review',
  ),
];
