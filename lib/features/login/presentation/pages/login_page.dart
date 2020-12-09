import 'package:auth/core/common/ui/top_half_widget_in_login_and_home_pages.dart';
import 'package:auth/features/login/presentation/widgets/bottom_half_login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../utilities/colors/app_colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            TopHalfWidgetInLoginAndHomePages(
              getStartedText: buildGetStartedText(),
              descriptionText: buildDescriptionText(),
            ),
            SizedBox(height: 25),
            BottomHalfLoginPage(),
          ],
        ),
      ),
    );
  }

  Widget buildGetStartedText() {
    return Text(
      'Get Started',
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: topHalfTextColorWidgetInLoginAndHome,
        ),
      ),
    );
  }

  Widget buildDescriptionText() {
    return Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 14,
          color: topHalfTextColorWidgetInLoginAndHome,
        ),
      ),
      maxLines:3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
