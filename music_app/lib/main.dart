import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play(int num){
              final player = AudioPlayer();
           
                player.play(AssetSource('note$num.wav'));

  }
Expanded buildPart({Color color:Colors.white,int num=0})=>(Expanded(
    child: (
                TextButton(
                
                onPressed: ()  {
  
                  play(num);
                
                },
  
                child: Container(
                  
                    color:color,
                )
                )),
  ));


  XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body :Column(
          children:[

                          
             buildPart(color:Colors.red,num:1),
             buildPart(color:Colors.yellow,num:2),
             buildPart(color:Colors.green,num:3),
             buildPart(color:Colors.orange,num:4),
            //  buildPart(2),
            // buildPart(3),
            // buildPart(4),
          ]
        )
      )
    );
  }
}



