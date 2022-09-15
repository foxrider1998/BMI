import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/kalkulasi.dart';
import 'package:bmi_calculator/widget/box1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiResult extends StatefulWidget {
  const BmiResult({Key? key}) : super(key: key);

  @override
  State<BmiResult> createState() => _BmiResultState();
}

class _BmiResultState extends State<BmiResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hasil")),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        kalkulasi(berat: berat, tinggi: kHeight, Gender: "$Gender"),
        GestureDetector(
            onTap: () {
              Navigator.of(context).pop(MaterialPageRoute(builder: ((context) {
                return InputPage();
              })));
            },
            child: Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: const Center(
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ))
      ]),
    );
  }
}
