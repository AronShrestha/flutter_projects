import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dice"),
        backgroundColor: Colors.deepPurpleAccent,

      ),
      body:DicePage(),
    )

    )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {


  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int lv=2;
  int rv=2;
  void change(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
        child: Row(

          children: [
            // Expanded(child:Image(image:AssetImage('images/dice1.png') )),
            // Padding(padding:EdgeInsets.symmetric(vertical: 0,horizontal: 20)),
            // Expanded(child: Image(image: AssetImage('images/dice2.png'),),),
            // TextButton(
            //

            // onPressed:() {},
            // child: Image(image: AssetImage('images/dice$leftDiceNumber.png'),width: 50,height: 50,),),
            Expanded(
              child: TextButton(

                onPressed:() {
                  setState( (){
                    change();

                    // if(lv==1)
                    //   {
                    //     leftDiceNumber=1;
                    //     lv+=1;
                    //   }
                    // else if(lv==2){
                    //   leftDiceNumber=2;
                    // }
                    // else if(lv==3){
                    //   leftDiceNumber=3;
                    // }
                    // else if(lv==4){
                    //   leftDiceNumber=4;
                    // }
                    // else if(lv==5){
                    //   leftDiceNumber=5;
                    // }
                    // else if(lv==6){
                    //   leftDiceNumber=6;
                    //   lv=0;
                    // }
                    // lv=lv+1;

                  });
                },
                child: Image(image:AssetImage('images/dice$leftDiceNumber.png')),
              ),

            ),
            Expanded(
              child: TextButton(

                onPressed: () {
                  setState(()
                  {
                    change();
                    // rightDiceNumber=Random().nextInt(6)+1;
                    // // if(rightDiceNumber==0) rightDiceNumber=1;
                    // print(rightDiceNumber-1);
                 }
                 );
                },
                child: Image(image:AssetImage('images/dice$rightDiceNumber.png')),
              ),

            ),



          ],
        ),
      ),
    );
  }
}
