import 'package:auth/core/common/widgets/top_half_widget.dart';
import 'package:auth/features/login/presentation/widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            TopHalfWidget(
              text1: buildText1(),
              text2: buildText2(),
            ),
            SizedBox(height: 30),
            Login(),
          ],
        ),
      ),
    );
  }

  Widget buildText1() {
    return Text(
      'Get Started',
      style: GoogleFonts.lato(
        textStyle: TextStyle(
            fontSize: 23, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }

  Widget buildText2() {
    return Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
      style: GoogleFonts.lato(
        textStyle: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
