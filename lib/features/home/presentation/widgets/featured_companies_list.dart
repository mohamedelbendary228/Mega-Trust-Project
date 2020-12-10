import 'package:auth/features/home/data/models/featured_companies_list_model.dart';
import 'package:auth/features/home/presentation/widgets/companies_items_list.dart';
import 'package:flutter/material.dart';

class FeaturedCompaniesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: FEATURED_COMPANIES
            .map(
              (featured) => CompaniesItemsList(
                id: featured.companyId,
                image: featured.companyImage,
              ),
            )
            .toList(),
      ),
    );
  }
}
