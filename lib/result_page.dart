import 'package:flutter/material.dart';
import 'constants.dart';

class OutputPage extends StatelessWidget {
  OutputPage(
      {required this.resultText,
      required this.calculatedBmi,
      required this.interpretation});
  String resultText;
  String calculatedBmi;
  String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kActiveCardColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      resultText,
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      calculatedBmi,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpretation,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                margin: EdgeInsets.only(top: 10.0),
                height: kBottomContainerHeight,
                width: double.infinity,
                color: kBottomContainerColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
