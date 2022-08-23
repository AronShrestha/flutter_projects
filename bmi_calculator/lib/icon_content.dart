import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const labelTextStyle = TextStyle(
        fontSize: 18,
        color:Color(0xFF8d8e98),
      );
class IconContent extends StatelessWidget {
  final String gender;
  final IconData iconName;
 IconContent({required this.gender,required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


      Icon(
        iconName,
        size: 80,
      ),
      SizedBox(
        height: 15,
      ),
      Text(gender,
      style:labelTextStyle,)
    ]);
  }
}