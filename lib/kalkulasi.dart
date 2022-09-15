import 'dart:ffi';

import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class kalkulasi extends StatelessWidget {
  kalkulasi({required this.berat, required this.tinggi, required this.Gender});
  int? tinggi;
  int? berat;
  String? Gender;
  double? score;
  List<String> details = ["1", "2", "3", "4"];

  @override
  Widget build(BuildContext context) {
    score = (berat! / ((tinggi! / 100) * (tinggi! / 100)));
    if (score! < 16) {
      details[0] = "underweight";
      details[1] = "Severe Thinnes";
      details[2] = "you need to eat more";
    } else if (score! < 17) {
      details[0] = "underweight";
      details[1] = "Moderate Thinnes";
      details[2] = "you need to eat more";
    } else if (score! < 18.5) {
      details[0] = "underweight";
      details[1] = "Mild Thinnes";
      details[2] = "you need to eat more";
    } else if (score! < 24.9) {
      details[0] = "Normal ";
      details[1] = "Range";
      details[2] = "keep it up";
    } else if (score! < 30) {
      details[0] = "Overwheight";
      details[1] = "Pre-Obese";
      details[2] = "you need to diet";
    } else if (score! < 35) {
      details[0] = "Overwheight";
      details[1] = "Obese class 1";
      details[2] = "you need to diet";
    } else if (score! < 40) {
      details[0] = "Overwheight";
      details[1] = "Class 2";
      details[2] = "you need to diet ";
    } else if (score! >= 40) {
      details[0] = "Overwheight";
      details[1] = "Class 3";
      details[2] = "you are really need diet";
    }

    return (Expanded(
        flex: 5,
        child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kBottomContainerColor,
            ),
            child: Center(
                child: Column(
              children: [
                Text("Your score is : ",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                Text(" ${score?.toStringAsFixed(2)}",
                    style:
                        TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 40,
                ),
                Text("You are  ${details[0]}",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text("(${details[1]})",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                Text("${details[2]}",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ],
            )))));
  }
}
