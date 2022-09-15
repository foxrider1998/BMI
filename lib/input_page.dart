// Final means single-assignment.
// Const means immutable.
//A final variable can be set only once; a const variable is a compile-time constant.
// (Const variables are implicitly final.)
import 'package:bmi_calculator/Icon_content_widget.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/result.dart';
import 'package:bmi_calculator/slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

int berat = 60;
int umur = 25;

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? SelectedGender;
  //int height=100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF090C22),
        title: const Text(kAppBarTitle),
      ),
      body: Container(
          child: GestureDetector(
        child: Column(children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: SelectedGender == Gender.male
                          ? kInactiveColor
                          : kThemeColor,
                      cardChild: IconContentWidget(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                        label2: " ",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: SelectedGender == Gender.female
                          ? kInactiveColor
                          : kThemeColor,
                      cardChild: IconContentWidget(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                        label2: " ",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      colour: kThemeColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("  Tinggi", style: kLabelTextStyle),
                          sliderClass()
                        ],
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(children: [
                  Expanded(
                      child: ReusableCard(
                    colour: kThemeColor,
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.weightScale,
                      label: 'berat',
                      label2: "$berat",
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          berat--;
                          setState(() {});
                        },
                        child: Text(
                          "-",
                          style: kLabelNumberStyle,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            berat++;
                            setState(() {});
                          },
                          child: Text(
                            "+",
                            style: kLabelNumberStyle,
                          ))
                    ],
                  )
                ])),
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: kThemeColor,
                        cardChild: IconContentWidget(
                          icon: FontAwesomeIcons.baby,
                          label: 'AGE',
                          label2: "$umur",
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            umur--;
                            setState(() {});
                          },
                          child: Text(
                            "-",
                            style: kLabelNumberStyle,
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              umur++;
                              setState(() {});
                            },
                            child: Text(
                              "+",
                              style: kLabelNumberStyle,
                            ))
                      ],
                    )
                  ],
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return BmiResult();
              })));
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Center(child: Text("calculate")),
            ),
          )
        ]),
      )),
    );
  }
}
