import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/QuestionScreen.dart';

class ResultScreen  extends StatefulWidget{
  int total=0;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState  extends State<ResultScreen> {

  ResultScreen RS =ResultScreen();
  QuestionScreen QS= QuestionScreen(0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage('https://www.teahub.io/photos/full/4-40404_friends-wallpaper-friends-couch-and-fountain.jpg'),
    fit: BoxFit.fill
    )
    ),
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
     children:[
    MaterialButton(
    child: Container(
    width: 200.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(child: Text(
        'Result = -${RS.total}', style: TextStyle(fontSize: 20.0),)),
    ),

    ),

       MaterialButton(
         child: Container(
           width: 200.0,
           height: 70.0,
           decoration: BoxDecoration(
             color: Colors.red,
             borderRadius: BorderRadius.circular(12.0),
           ),
           child: Center(child:Text('PLAY AGAIN',style: TextStyle(fontSize: 20.0),)),
         ),
         onPressed: () => Navigator.pushReplacement(
           context,
           MaterialPageRoute(
             builder: (context) => QuestionScreen(QS.index),
           ),
         ),
       )//
          ],
        ),
      )
    ),
      ),
    );

}
}