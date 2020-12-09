import 'package:auth/core/common/ui/build_text.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class SkillsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (ctx, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: BuildText(
              text: 'Lorem Ipsum',
              color: titleTextColor,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
