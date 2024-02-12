import 'package:bmi_app/imput_page.dart';
//import 'package:bmi_app/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0A0E22),
          scaffoldBackgroundColor: Color(0xff0A0E22),
          appBarTheme: AppBarTheme(color: Color(0xff0A0E22)),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.purple),
          textTheme: TextTheme(
              bodyMedium: TextStyle(color: Colors.red, fontSize: 14))),
      home: InputPage(),
    );
  }
}
