import 'package:auth/core/common/widgets/build_text.dart';
import 'package:auth/core/common/widgets/top_half_widget.dart';
import 'package:auth/features/home/presentation/widgets/featured_companies_list.dart';
import 'package:auth/features/home/presentation/widgets/latest_job_listView.dart';
import 'package:auth/features/home/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              TopHalfWidget(
                text1: BuildText(
                  text: 'Search For',
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 21,
                ),
                text2: BuildText(
                  text: 'Your Dream Job',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SearchWidget(),
            ],
          ),
          SizedBox(height: 20),
          buildFeaturedCompaniesTextRow(context),
          SizedBox(height: 10),
          FeaturedCompaniesList(),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: BuildText(
              text: 'Latest Jobs',
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 10),
          LatestJobListView(),
        ],
      ),
    );
  }

  Widget buildFeaturedCompaniesTextRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildText(
            text: 'Featured Companies',
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
            fontSize: 21,
          ),
          Icon(Icons.chevron_right, color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }
}
