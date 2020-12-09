import 'package:auth/features/home/presentation/provider/latest_jobs_provider.dart';
import 'package:auth/features/login/presentation/pages/login_page.dart';
import 'package:auth/utilities/colors/app_colors.dart';
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
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
