import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Color(0xFF090C22),
        // textTheme:TextTheme(bodyText2: TextStyle(color:Colors.white )),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF090C22),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
