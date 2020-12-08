import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopHalfWidget extends StatelessWidget {
  final Widget text1;
  final Widget text2;

  TopHalfWidget({
    @required this.text1,
    @required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.indigo[900],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    text1,
                    SizedBox(height: 5),
                    text2,
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Expanded(
                // Here the svg image
                child: Container(
                  // decoration: BoxDecoration(
                  //     border: Border.all(width: 1, color: Colors.white)),
                  width: 40,
                  height: 120,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
