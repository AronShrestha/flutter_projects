import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';



const bottomContainerHeight =80.0;
const activeCradColor=Color(0XFF1D1E33);
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xFF0A0E21),
          title: Text('BMI Calculator',


          ),
        ),

        body:Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(

                    child:Reusablecard(color:Color(0XFF1D1E33),
                    
                    cardChild: IconContent(gender:"Male",iconName: FontAwesomeIcons.mars,),
                    ),
                ),
                                Expanded(

                    child:Reusablecard(color:Color(0XFF1D1E33),
                    
                    cardChild: IconContent(gender:"Female",iconName: FontAwesomeIcons.venus,),
                    ),
                ),
            //     Expanded(

            //         child:Reusablecard(color:Color(0XFF1D1E33)),
            //     ),

            //   ],
            // )),
            // Expanded(

            //     child:Reusablecard(color:Color(0XFF1D1E33)),
            // ),


            // Expanded(child:Row(
            //   children: [
            //     Expanded(

            //         child:Container(

            //           margin: EdgeInsets.all(15),
            //           decoration: BoxDecoration(
            //               color: Color(0XFF1D1E33),
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //         )
            //     ),
            //     Expanded(

            //         child:Reusablecard(color:Color(0XFF1D1E33)),
            //     ),
       
              ],
            )),
                     Container(
                  color: Color(0xFFEB1555),
                  margin: EdgeInsets.only(top:10.0),
                  width: double.infinity,
                  height: bottomContainerHeight,
                )


          ],
        )
    );
  }
}




