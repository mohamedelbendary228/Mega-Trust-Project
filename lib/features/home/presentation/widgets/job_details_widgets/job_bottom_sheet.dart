import 'package:auth/core/common/ui/build_custom_widget_for_text.dart';
import 'package:auth/core/common/ui/custom_text_filed_container.dart';
import 'package:auth/core/common/ui/main_button.dart';
import 'package:auth/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';

class JobBottomSheet extends StatefulWidget {
  @override
  _JobBottomSheetState createState() => _JobBottomSheetState();
}

class _JobBottomSheetState extends State<JobBottomSheet> {
  final TextEditingController _currentSalaryController =
      TextEditingController();
  final TextEditingController _expectedSalaryController =
      TextEditingController();

  @override
  void dispose() {
    _currentSalaryController.dispose();
    _expectedSalaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildBottomSheetTexts('Current Salary'),
          SizedBox(height: 10),
          currentSalaryTextFiled(),
          SizedBox(height: 10),
          buildBottomSheetTexts('Expected Salary'),
          SizedBox(height: 10),
          expectedSalaryTextFiled(),
          SizedBox(height: 10),
          buildBottomSheetTexts('Currency'),
          SizedBox(height: 10),
          currencyContainer(),
          Spacer(),
          MainButton(text: 'Send Proposal', onTap: (){}),
        ],
      ),
    );
  }

  Widget currentSalaryTextFiled() {
    return CustomTextFiledContainer(
      child: TextField(
        controller: _currentSalaryController,
        decoration: InputDecoration(border: InputBorder.none),
        onChanged: (_) => _updateState(),
      ),
    );
  }

  Widget expectedSalaryTextFiled() {
    return CustomTextFiledContainer(
      child: TextField(
        controller: _expectedSalaryController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(border: InputBorder.none),
        onChanged: (_) => _updateState(),
      ),
    );
  }

  Widget currencyContainer() {
    return CustomTextFiledContainer(
      child: Container(),
    );
  }

  Widget buildBottomSheetTexts(String text) {
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
