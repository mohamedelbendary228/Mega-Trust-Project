import 'package:auth/core/common/ui/build_text.dart';
import 'package:auth/features/home/presentation/pages/job_details_page.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String jobType;
  final String jobName;
  final String jobStatus;
  final bool isProposal;

  const JobCard({
    @required this.jobType,
    @required this.jobName,
    this.jobStatus,
    this.isProposal = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          CupertinoPageRoute(
            builder: (ctx) => JobDetailsPage(),
          ),
        );
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
          locationHere(context),
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
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.black),
                  color: Colors.white,),
              //child: Here should be SVG Image for the company's logo,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildText(
                  text: jobType,
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 5),
                BuildText(
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

  Widget locationHere(BuildContext context) {
    return Positioned(
      bottom: 25,
      right: 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.location_pin,
                color: Theme.of(context).primaryColor,
              ),
              BuildText(
                text: 'Location Here',
                color: subTitleTextColor,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              )
            ],
          )
        ],
      ),
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
