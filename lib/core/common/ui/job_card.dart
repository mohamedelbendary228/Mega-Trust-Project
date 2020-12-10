import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/features/home/presentation/pages/job_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'location_here_widget.dart';

class JobCard extends StatelessWidget {
  final String jobId;
  final String jobType;
  final String jobName;
  final String jobStatus;
  final String image;
  final bool isProposal;

  const JobCard({
    @required this.jobId,
    @required this.jobType,
    @required this.jobName,
    @required this.image,
    this.jobStatus,
    this.isProposal = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true)
            .pushNamed(JobDetailsPage.routeName, arguments: jobId);
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              padding: EdgeInsets.all(15),
              height: 120,
              decoration: BoxDecoration(
                // border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).accentColor,
              ),
              child: aboutJob(),
            ),
          ),
          if (isProposal) jobStatusContainer(context),
          Positioned(
              bottom: 25,
              right: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  LocationHere(),
                ],
              )),
        ],
      ),
    );
  }

  Widget aboutJob() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // logo of company
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(image)),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildCustomWidgetForTexts(
                  text: jobType,
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 5),
                BuildCustomWidgetForTexts(
                  text: jobName,
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget jobStatusContainer(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 90,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            )),
        child: Text(
          jobStatus,
          style: TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }
}
