import 'package:auth/features/companies/presentation/pages/company_details_page.dart';
import 'package:auth/features/home/presentation/pages/job_details_page.dart';
import 'package:auth/features/login/presentation/pages/login_page.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Portal',
      theme: ThemeData(
        primaryColor: lightPrimaryColor,
        accentColor: lightAccentColor,
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        canvasColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case JobDetailsPage.routeName:
            return CupertinoPageRoute(
              builder: (_) => JobDetailsPage(),
              settings: settings,
            );
          case CompanyDetailsPage.routeName:
            return CupertinoPageRoute(
              builder: (_) => CompanyDetailsPage(),
              settings: settings,
            );
        }
      },
      // routes: {
      //   JobDetailsPage.routeName: (ctx) => JobDetailsPage(),
      // },
    );
  }
}
