import 'package:auth/features/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber[600],
        accentColor: Colors.grey[200],
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
