import 'package:auth/features/home/presentation/widgets/companies_items_list.dart';
import 'package:flutter/material.dart';

class FeaturedCompaniesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (ctx, index) => CompaniesItemsList(),
      ),
    );
  }
}
