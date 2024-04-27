import 'package:bmi_calculator_flutter/constants/constants.dart';
import 'package:bmi_calculator_flutter/model/bmi_data.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final BMIDataModel dataModel;

  const ResultPage({super.key, required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Results"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Results Page!! \nBMIDataModel("
              "${dataModel.mGender}, ${dataModel.mHeight}, "
              "${dataModel.mWeight}, ${dataModel.mAge})",
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBottomContainerColor,
                ),
                child: const Text("Back to Home"))
          ],
        ),
      ),
    );
  }
}
