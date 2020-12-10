import 'package:flutter/cupertino.dart';

class CompaniesModel {
  final String companyId;
  final String companyName;
  final String image;
  final int currentJobs;

  const CompaniesModel({
    @required this.companyId,
    @required this.companyName,
    @required this.image,
    @required this.currentJobs,
  });
}

const DUMMY_COMPANIES_LIST = const [
  CompaniesModel(
    companyId: 'com1',
    companyName: 'Mega Trust',
    image: 'assets/images/mega trust.png',
    currentJobs: 1,
  ),
  CompaniesModel(
    companyId: 'com2',
    companyName: 'Vodafon',
    image: 'assets/images/vodafon.png',
    currentJobs: 2,
  ),
  CompaniesModel(
    companyId: 'com3',
    companyName: 'Amazon',
    image: 'assets/images/amazon.png',
    currentJobs: 3,
  ),
  CompaniesModel(
    companyId: 'com4',
    companyName: 'Unilever',
    image: 'assets/images/unilever.png',
    currentJobs: 1,
  ),
];
