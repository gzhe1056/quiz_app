import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];
  Widget? activeScreen;
    void chooseAnswer(String answer){
      selectedAnswers.add(answer);
      if(selectedAnswers.length == questions.length){
        setState(() {
          // selectedAnswers =[];
          activeScreen = ResultsScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz,);
        });
      }
   }

   @override
  void initState() {
    selectedAnswers =[];
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    });
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers =[];
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    });
  }

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255,78,13,151),
                  Color.fromARGB(255,107,15,168),
                ],
              ),
            ),
            child: activeScreen,
          ),
        ),
      );
    }
  }