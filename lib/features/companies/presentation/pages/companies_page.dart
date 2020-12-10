import 'package:auth/features/companies/data/models/companies_model.dart';
import 'package:auth/features/companies/presentation/widgets/company_item_widget.dart';
import 'package:flutter/material.dart';

class CompaniesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 0),
        child: GridView(
          padding: const EdgeInsets.all(20),
          children: DUMMY_COMPANIES_LIST
              .map(
                (item) => CompanyItem(
                  id: item.companyId,
                  image: item.image,
                  companyName: item.companyName,
                  currentJobs: item.currentJobs,
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.7,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
        ),
      ),
    );
  }
}
