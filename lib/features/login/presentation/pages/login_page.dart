import 'package:auth/features/login/presentation/widgets/get_started_widget.dart';
import 'package:auth/features/login/presentation/widgets/login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              GetStartedWidget(),
              SizedBox(height: 30),
              Login(),

            ],
          ),
        ),
      ),
    );
  }
}

