import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class LogoAndTitle extends StatelessWidget {
  final String jobName;
  final String companyName;

  const LogoAndTitle({
    Key key,
    @required this.jobName,
    @required this.companyName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
          ),
          //child: Here should be SVG Image for logo,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildCustomWidgetForTexts(
              text: jobName,//'Ui / Ux Designer',
              color: mainTextsColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 7),
            BuildCustomWidgetForTexts(
              text: companyName,//'Mega Trust',
              color: mainTextsColor,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ],
    );
  }
}
