import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color myColor;
  final Widget? childWidget;
  const ReusableCard({super.key, required this.myColor, this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: myColor,
      ),
      child: childWidget,
    );
  }
}
