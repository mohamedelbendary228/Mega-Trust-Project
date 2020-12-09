import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopHalfWidgetInLoginAndHomePages extends StatelessWidget {
  final Widget getStartedText;
  final Widget descriptionText;

  TopHalfWidgetInLoginAndHomePages({
    @required this.getStartedText,
    @required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: topHalfBackgroundColorWidgetInLoginAndHome,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    getStartedText,
                    SizedBox(height: 5),
                    descriptionText,
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  
                  //child: Image.asset('assets/images/man logo.png', height: 200,)
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
