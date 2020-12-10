import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/core/common/ui/main_button.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/job_bottom_sheet.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/job_info_card.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/logo_and_title.dart';
import 'package:auth/core/common/ui/share_and_back_top_row_in_details_pages.dart';
import 'package:auth/features/home/presentation/widgets/job_details_widgets/skill_list_view.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class JobDetailsPage extends StatelessWidget {
  static const routeName = '/job-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    final jobId = ModalRoute.of(context).settings.arguments as String;
    //final latestJob = latestJobs.firstWhere((job) => job.jodId == jobId);
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
            LogoAndTitle(
              jobName: 'Ui / Ux Designer',
              companyName: 'Mega Trust',
              image: 'assets/images/mega trust.png',
            ),
            SizedBox(height: 40),
            ...buildDescriptionSection(),
            SizedBox(height: 30),
            buildTitleOfSectionText('Skills'),
            SizedBox(height: 10),
            SkillsListView(),
            SizedBox(height: 20),
            buildTitleOfSectionText('Benefits'),
            ...buildBenefits(context),
            SizedBox(height: 10),
            JobInfoCard(),
            SizedBox(height: 20),
            MainButton(text: 'Apply Now', onTap: () => applyNow(context)),
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

  Widget buildTitleOfSectionText(String text) {
    return BuildCustomWidgetForTexts(
      text: text,
      color: mainTextsColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  List<Widget> buildBenefits(BuildContext context) {
    return [
      ListTile(
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
      ListTile(
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
    ];
  }

  void applyNow(BuildContext ctx) {
    showModalBottomSheet(context: ctx, builder: (bCtx) => JobBottomSheet());
  }
}
