import 'package:flutter/material.dart';

class FeaturedCompaniesListModel {
  final String companyId;
  final String companyImage;

  const FeaturedCompaniesListModel({
    @required this.companyId,
    @required this.companyImage,
    //@required String jonStatus,
  });

  @override
  List<Object> get props => [companyId, companyImage];
}

const FEATURED_COMPANIES = const [
  FeaturedCompaniesListModel(
    companyId: 'c1',
    companyImage: 'assets/images/mega trust.png',
  ),
  FeaturedCompaniesListModel(
    companyId: 'c2',
    companyImage: 'assets/images/vodafon.png',
  ),
  FeaturedCompaniesListModel(
    companyId: 'c3',
    companyImage: 'assets/images/amazon.png',
  ),
  FeaturedCompaniesListModel(
    companyId: 'c4',
    companyImage: 'assets/images/unilever.png',
  ),
];
