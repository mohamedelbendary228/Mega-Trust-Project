import 'package:auth/core/common/ui/build_text.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class JobInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildColumn(
            'Job Category',
            'IT / Sofrware',
            'Job Type',
            'Full Time',
          ),
          buildColumn(
            'Experience',
            '1 Year',
            'Salary',
            'Confidental',
          ),
        ],
      ),
    );
  }

  Widget buildColumn(String text1, String text2, String text3, String text4) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildText(
          text: text1,//'Job Category',
          color: titleTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 5),
        BuildText(
          text: text2,//'IT / Sofrware',
          color: titleTextColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10),
        BuildText(
          text: text3,//'Job Type',
          color: titleTextColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 5),
        BuildText(
          text: text4,//'Full Time',
          color: titleTextColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}
