import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CenterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildColumn(
                'Established',
                '08/2/2020',
                'Website',
                'Www.MegaTrust.Net',
              ),
              buildColumn(
                'Phone',
                '895958623562',
                'Email',
                'Hr@MegaTrust.Net',
              ),
            ],
          ),
          SizedBox(height: 10),
          BuildCustomWidgetForTexts(
            text: 'Social Media',//'Job Category',
            color: mainTextsColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 10),
          socialMediaRow(),
        ],
      ),
    );
  }

  Widget buildColumn(String text1, String text2, String text3, String text4) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildCustomWidgetForTexts(
          text: text1,//'Job Category',
          color: mainTextsColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 5),
        BuildCustomWidgetForTexts(
          text: text2,//'IT / Sofrware',
          color: mainTextsColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10),
        BuildCustomWidgetForTexts(
          text: text3,//'Job Type',
          color: mainTextsColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 5),
        BuildCustomWidgetForTexts(
          text: text4,//'Full Time',
          color: mainTextsColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
  
  Widget socialMediaRow() {
    return Row(
      children: [
        Image.asset('assets/images/facebook.png'),
        SizedBox(width: 5),
        Image.asset('assets/images/insta.png'),
        SizedBox(width: 5),
        Image.asset('assets/images/twitter.png'),
        SizedBox(width: 5),
        Image.asset('assets/images/linkedIn.png'),
        SizedBox(width: 5),
        Image.asset('assets/images/youtube.png'),
        SizedBox(width: 5),
      ],
    );
  }
}
