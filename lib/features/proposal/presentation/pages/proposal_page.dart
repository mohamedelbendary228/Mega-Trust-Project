import 'package:auth/core/common/ui/job_card.dart';
import 'package:auth/features/home/data/models/latest_jobs_model.dart';
import 'package:flutter/material.dart';

class ProposalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 20, right: 20, bottom: 8),
        child: Container(
          child: Column(
            children: LATEST_JOBS
                .map(
                  (jobs) => JobCard(
                    jobId: jobs.jobId,
                    jobType: jobs.jobType,
                    jobName: jobs.jobName,
                    image: jobs.image,
                    jobStatus: jobs.jobStatus,
                    isProposal: false,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
