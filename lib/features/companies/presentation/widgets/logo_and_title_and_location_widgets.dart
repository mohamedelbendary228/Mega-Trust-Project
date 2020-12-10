import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/core/common/ui/location_here_widget.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class LogoAndTitleAndLocation extends StatelessWidget {
  final String companyName;
  final String image;

  const LogoAndTitleAndLocation({
    @required this.companyName,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 85,
          width: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(1),
              child: Image.asset(image)),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            BuildCustomWidgetForTexts(
              text: companyName, //'Mega Trust',
              color: mainTextsColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 8),
            LocationHere(),
          ],
        ),
      ],
    );
  }
}
