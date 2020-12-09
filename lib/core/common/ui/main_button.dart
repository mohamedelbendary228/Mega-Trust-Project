import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MainButton({Key key, @required this.text, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: BuildCustomWidgetForTexts(
          text: text,
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        )
      ),
    );
  }
}
