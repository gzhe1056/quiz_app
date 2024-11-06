
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main(){
  runApp(
    // MaterialApp(
    //   home: Scaffold(
    //     body: Container(
    //       decoration: BoxDecoration(
    //         gradient: LinearGradient(colors: [
    //           Color.fromARGB(255, 78, 13, 151),
    //           Color.fromARGB(255, 123, 15, 121)
    //         ],),
    //       ),
    //       child: const StartScreen(),
    //     ),
    //   ),
    // ),
    const Quiz()
  );
}