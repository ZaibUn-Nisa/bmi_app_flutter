//import 'dart:math';

import 'package:bmi_app/icon_page.dart';
//import 'package:bmi_app/weight_age.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_app/resuable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:bmi_app/slider_contents.dart';

const activeCardColour = Color.fromARGB(15, 252, 250, 250);
const inActiveCardColour = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      myColor: selectedGender == Gender.male
                          ? activeCardColour
                          : inActiveCardColour,
                      childWidget: IconContent(
                        text: 'MALE',
                        myIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      myColor: selectedGender == Gender.female
                          ? activeCardColour
                          : inActiveCardColour,
                      childWidget: IconContent(
                        text: 'FEMALE',
                        myIcon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  myColor: Color(0xff101F33),
                ),
              ),
            ],
          )),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    myColor: Color(0xff101F33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    myColor: Color(0xff101F33),
                    childWidget: Column(
                      children: [
                        Text('WEIGHT'),
                        Text('74'),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            
                            
                            Text('kk'),
                            InkWell(onTap: () {
                              
                            },)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              color: Color(0xffEB1555),
              child: Center(
                child: Text(
                  'Calculate ',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
