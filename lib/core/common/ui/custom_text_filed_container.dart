import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFiledContainer extends StatelessWidget {
  final Widget child;

  CustomTextFiledContainer({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: backgroundCardsColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}
