import 'package:flutter/material.dart';
import 'package:project2/QuestionScreen.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0 ;

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
            children: [
              Text(
                '',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MaterialButton(
                child: Container(
                  width: 200.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(child:Text('START QUIZ',style: TextStyle(fontSize: 20.0),)),
                ),
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(index),
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
