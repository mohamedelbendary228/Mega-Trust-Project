import 'package:auth/core/common/widgets/job_card.dart';
import 'package:flutter/material.dart';

class LatestJobListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (ctx, index) => JobCard(
            jobName: 'Sr, Ui Designer',
            jobType: 'Google, Full Time',
            jobStatus: 'Closed',
            isProposal: false,
          ),
        ),
      ),
    );
  }
}
