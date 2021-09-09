import 'package:flutter/material.dart';
import 'package:project2/Quiz.dart';
import 'package:project2/ResultScreen.dart';

class QuestionScreen extends StatefulWidget {
      int index;


  QuestionScreen(this.index,);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  Quiz quiz = Quiz();
  ResultScreen RS =ResultScreen();
  bool isCorrect = false;
  bool isWrong = false;
  Color right= Colors.green;
  Color wrong= Colors.red;
  Color col=  Colors.white;
  Color coll= Colors.white;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              quiz.questions[widget.index].question,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                    child: Container(
                      width: 150.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: col,
                        borderRadius: BorderRadius.circular(12.0),
                         )
                      ,
                      child: Center(child:Text('True',style: TextStyle(fontSize: 20.0,color: Colors.green),)),
                    ),

                    onPressed: () {
                      if(quiz.questions[widget.index].answer == true){
                        setState(() {
                          isCorrect = true;
                          isWrong = false;
                          col=right;
                          RS.total+=1;

                        });
                      }
                      else {
                        setState(() {
                          isCorrect = false;
                          isWrong = true;
                          col=wrong;
                        });
                      }
                    }

                ),
                MaterialButton(
                    child: Container(
                      width: 150.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: coll,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Center(child:Text('False',style: TextStyle(fontSize: 20.0,color: Colors.red),)),
                    ),
                    onPressed: () {
                      if(quiz.questions[widget.index].answer == true){
                        setState(() {
                          isCorrect = false;
                          isWrong = true;
                          coll=wrong;
                        });
                      }
                      else {
                        setState(() {
                          isCorrect = true;
                          isWrong = false;
                          coll=right;
                          RS.total+=1;
                        });
                      }
                    }
                )//,
              ],
            ),

               MaterialButton(
                 child: Container(
                   width: 150.0,
                   height: 70.0,
                   decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(12.0),
                   ),
                   child: Center(
                       child: Text('Next', style: TextStyle(fontSize: 20.0),)),
                 ),
                 onPressed: () {
                   if(widget.index==0 ||widget.index==1 ||widget.index==2 ||widget.index==3 ||widget.index==3 ){
                   Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(
                       builder: (context) => QuestionScreen(widget.index + 1),
                     ),
                   );
                   }
                   else{
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(
    builder: (context) => ResultScreen(),
    ),
    );
                   }
                       }
               ),
          ],
        ),
        ),
     ),
    );
  }
}


