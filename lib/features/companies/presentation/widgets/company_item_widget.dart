import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/features/companies/presentation/pages/company_details_page.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CompanyItem extends StatelessWidget {
  final String id;
  final String image;
  final String companyName;
  final int currentJobs;

  const CompanyItem({
    Key key,
    @required this.id,
    @required this.image,
    @required this.companyName,
    @required this.currentJobs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).pushNamed(
          CompanyDetailsPage.routeName,
          arguments: id,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundCardsColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(image),
            ),
            SizedBox(height: 10),
            BuildCustomWidgetForTexts(
              text: companyName,
              color: mainTextsColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 5),
            BuildCustomWidgetForTexts(
              text: 'Current Jobs: ${currentJobs.toString()}',
              color: mainTextsColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            SizedBox(height: 10),
            locationHere(context)
          ],
        ),
      ),
    );
  }

  Widget locationHere(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_pin,
          color: Theme.of(context).primaryColor,
        ),
        BuildCustomWidgetForTexts(
          text: 'Location Here',
          color: mainTextsColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        )
      ],
    );
  }
}
