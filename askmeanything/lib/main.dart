import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text("Ask Me Anything",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),

          
          ),

        ) ,
        body: System(),
        )
    )
  );
}
class System extends StatefulWidget {
  const System({Key? key}) : super(key: key);

  @override
  State<System> createState() => _SystemState();
}

class _SystemState extends State<System> {
  int imagenumber = 1;
  void answer(){
    imagenumber =Random().nextInt(5)+1;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100,horizontal: 5),
      child:TextButton(
        onPressed: () {
          setState(() {
            answer();
          });
        },
           child:Image.asset('images/ball$imagenumber.png'),
      ),
   

    );
    
  }
}


