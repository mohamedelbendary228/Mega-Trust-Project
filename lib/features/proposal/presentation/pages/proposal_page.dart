import 'package:auth/core/common/ui/job_card.dart';
import 'package:flutter/material.dart';

class ProposalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
        child: Container(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => JobCard(
              jobName: 'Sr, Ui Designer',
              jobType: 'Google, Full Time',
              jobStatus: 'Closed',
              isProposal: true, 
            ),
          ),
        ),
      ),
    );
  }
}
