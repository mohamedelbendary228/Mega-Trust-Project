import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AvailableCareersCard extends StatelessWidget {
  final String image;
  final String jobTitle;
  final String jobType;

  const AvailableCareersCard({
    Key key,
    @required this.image,
    @required this.jobTitle,
    @required this.jobType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      //height: 100,
      decoration: BoxDecoration(
        // border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).accentColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image, width: 60),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildCustomWidgetForTexts(
                text: jobType,
                color: mainTextsColor,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 5),
              BuildCustomWidgetForTexts(
                text: jobTitle,
                color: mainTextsColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ],
          )
        ],
      ),
    );
  }
}
