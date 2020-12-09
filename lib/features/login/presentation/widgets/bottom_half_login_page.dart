import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/core/common/ui/main_button.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../cupertino_home_scaffold.dart';

class BottomHalfLoginPage extends StatefulWidget {
  @override
  _BottomHalfLoginPageState createState() => _BottomHalfLoginPageState();
}

class _BottomHalfLoginPageState extends State<BottomHalfLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildEmailAndPasswordText('Email'),
            SizedBox(height: 10),
            emailTextField(),
            SizedBox(height: 15),
            buildEmailAndPasswordText('Password'),
            SizedBox(height: 10),
            passwordTextField(),
            SizedBox(height: 20),
            MainButton(
              text: 'Login',
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (ctx) => BottomNavBar(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget emailTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: lightAccentColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: _emailController,
        focusNode: _passwordFocusNode,
        decoration: InputDecoration(border: InputBorder.none),
        textInputAction: TextInputAction.next,
        onChanged: (email) => _updateState(),
      ),
    );
  }

  Widget passwordTextField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: lightAccentColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: _passwordController,
        textInputAction: TextInputAction.done,
        obscureText: true,
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye), border: InputBorder.none),
        onChanged: (password) => _updateState(),
      ),
    );
  }

  Widget buildEmailAndPasswordText(String text) {
    return BuildCustomWidgetForTexts(
      text: text,
      color: mainTextsColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }

  void _updateState() {
    setState(() {});
  }
}
