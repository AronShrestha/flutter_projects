import 'package:flutter/material.dart';

class Reusablecard extends StatelessWidget {
  
  Reusablecard({this.color=Colors.green,required this.cardChild});
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:cardChild,

      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}