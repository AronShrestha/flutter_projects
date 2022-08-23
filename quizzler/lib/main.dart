import 'package:flutter/material.dart';
import 'Question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Question_brain.dart';


QuizBrain quizBrain = QuizBrain();
void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey.shade900,
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child:QuizPage(),
          ),
        ),
      )
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper=[];
  void checkAnswer(bool userPickedAnswer){
          bool correctAnswer = quizBrain.getAnswer();
                if (correctAnswer==userPickedAnswer){
                  setState((){
                    if(quizBrain.scorePass()){
                    quizBrain.getNextQuestion();
                    scorekeeper.add(Icon(Icons.check,color: Colors.green,),);}
                    else{
                      Alert(context: context, title: "Sorry", desc: "Question Finished").show();
                      scorekeeper=[];
                      quizBrain.reset();
                    }

                  });

                }
                else{
                  setState((){
                     if(quizBrain.scorePass()){
                  quizBrain.getNextQuestion();
                  scorekeeper.add(
                  Icon(Icons.cancel,color: Colors.red,),
                  );}
                });}

  }

  // List <bool> answer=[
  //   false,true,false
  // ];
  // Question QA1 = new Question('You can lead a cow downstaris but not upstairs.', false);
  // Question QA2 = new Question('Approximately one quarter of human bones are in the feet', true);
  // Question QA3 = new Question('A slug\'s blood is green', false);
  //   List<Question> question =[
  //     Question('You can lead a cow downstaris but not upstairs.', false),
  //     Question('Approximately one quarter of human bones are in the feet', true),
  //    Question('A slug\'s blood is green', false),
  //    Question('A slug\'s blood is green', false),
 
  // ];
  int num=0;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Expanded(
          flex:4,
          child:Padding(
            padding: EdgeInsets.all(10),
            child:Center(
              child:Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              )
            )
          
          )
        ),
        Expanded(

          child:Padding(
            padding:EdgeInsets.all(10),
            child:TextButton(
              onPressed: (){
                checkAnswer(true);
           },

              child: Container(
                width: 500,
                height: 50,
                color:Colors.green,
                child: Center(
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          )

        ),
        Expanded(
            child:Padding(
                padding:EdgeInsets.all(10),
                child:TextButton(
                  onPressed: (){

                  checkAnswer(false);                  },
                  
                  child: Container(
                    width: 500,
                    height: 50,
                    color:Colors.red,
                    child: Center(
                      child: Text(
                        'False',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
            )

        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:scorekeeper,
        )
      ],
    );
  }
}
