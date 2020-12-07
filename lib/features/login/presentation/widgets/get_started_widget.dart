import 'package:flutter/material.dart';

class GetStartedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.1,
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                //width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Get Started Get Started Get Started Get Started Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(child: Placeholder(fallbackHeight: 200, color: Colors.white,)),
          ],
        ),
      ),
    );
  }
}
