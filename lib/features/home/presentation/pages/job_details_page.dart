import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/core/common/ui/main_button.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/job_info_card.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/logo_and_title.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/share_and_back_top_row.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/skill_list_view.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class JobDetailsPage extends StatelessWidget {
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
            SizedBox(height: 20),
            LogoAndTitle(
              jobName: 'Ui / Ux Designer',
              companyName: 'Mega Trust',
            ),
            SizedBox(height: 40),
            ...buildDescriptionSection(),
            SizedBox(height: 30),
            buildTitleOfScectionText('Skills'),
            SizedBox(height: 10),
            SkillsListView(),
            SizedBox(height: 20),
            buildTitleOfScectionText('Benefits'),
            buildBenefitsListView(context),
            SizedBox(height: 10),
            JobInfoCard(),
            SizedBox(height: 20),
            MainButton(text: 'Apply Now', onTap: () {}),
            SizedBox(height: 50),
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

  Widget buildTitleOfScectionText(String text) {
    return BuildCustomWidgetForTexts(
      text: text,
      color: mainTextsColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  Widget buildBenefitsListView(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 8,
          ),
          title: BuildCustomWidgetForTexts(
            text: 'Lorem Ipsum is simply dummy and typesetting industry',
            color: subTitleTextColor,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
