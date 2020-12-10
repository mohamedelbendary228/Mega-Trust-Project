import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/core/common/ui/share_and_back_top_row_in_details_pages.dart';
import 'package:auth/features/companies/presentation/widgets/build_availble_careers_card.dart';
import 'package:auth/features/companies/presentation/widgets/center_card.dart';
import 'package:auth/features/companies/presentation/widgets/logo_and_title_and_location_widgets.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CompanyDetailsPage extends StatelessWidget {
  static const routeName = '/company-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShareAndBackTopRow(
              onPressedArrow: () {
                Navigator.of(context).pop();
              },
              onPressedShare: () {},
            ),
            SizedBox(height: 10),
            LogoAndTitleAndLocation(
              companyName: 'Mega Trust',
              image: 'assets/images/mega trust.png',
            ),
            SizedBox(height: 40),
            ...buildDescriptionSection(),
            SizedBox(height: 20),
            CenterCard(),
            SizedBox(height: 20),
            availableCareersText(),
            SizedBox(height: 20),
            AvailableCareersCard(
              jobType: 'Full Time',
              jobTitle: 'Android Developer',
              image: 'assets/images/mega trust.png',
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  List<Widget> buildDescriptionSection() {
    return [
      BuildCustomWidgetForTexts(
        text: 'Job Description',
        color: mainTextsColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      SizedBox(height: 10),
      BuildCustomWidgetForTexts(
        text:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        color: subTitleTextColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ];
  }

  Widget availableCareersText() {
    return BuildCustomWidgetForTexts(
      text: 'Available Careers',
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: mainTextsColor,
    );
  }
}
