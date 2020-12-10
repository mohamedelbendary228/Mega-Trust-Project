import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

import 'build_custom_widget_for_text.dart';

class LocationHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.location_pin,
          color: Theme.of(context).primaryColor,
          size: 22,
        ),
        BuildCustomWidgetForTexts(
          text: 'Location Here',
          color: mainTextsColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        )
      ],
    );
  }
}
