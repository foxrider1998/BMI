import 'package:bmi_calculator/Icon_content_widget.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class firstBox extends StatefulWidget {
  dynamic val1;
  String labelKartu;

  firstBox({required this.labelKartu, required this.val1});

  @override
  State<firstBox> createState() => _firstBoxState();
}

class _firstBoxState extends State<firstBox> {
  get labelKartu => null;

  get val1 => null;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          ReusableCard(
            colour: kThemeColor,
            cardChild: Column(children: <Widget>[
              IconContentWidget(
                icon: Icons.abc,
                label: "$labelKartu",
                label2: "$val1",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      "${val1}";
                      setState(() {});
                    },
                    child: Text(
                      "-",
                      style: kLabelNumberStyle,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        val1;
                        setState(() {});
                      },
                      child: Text(
                        "+",
                        style: kLabelNumberStyle,
                      ))
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
