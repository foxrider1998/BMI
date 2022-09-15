import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class IconContentWidget extends StatelessWidget {
  IconContentWidget({required this.icon, required this.label, this.label2});
  final IconData icon;
  final String label;

  String? label2;
  @override
  Widget build(BuildContext context) {
    String? labelKe2 = "";
    if (label2 != null) {
      labelKe2 = label2;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          style: kLabelTextStyle,
          label,
        ),
        Text(
          style: kLabelTextStyle,
          "$label2",
        ),
      ],
    );
  }
}
