import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/start_screen.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestart});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData(){
    List<Map<String, Object>> summary = [];
    for(var i = 0; i<chosenAnswers.length;i++){
      summary.add(
        {
          'question_index': i,
          'question':questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }
  final VoidCallback onRestart;

  @override
  Widget build(context){
    final summaryData =getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(
      (data){
        return data['correct_answer']== data['user_answer'];
    },).length;
    
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(('You answered $numCorrectQuestions out of $numTotalQuestions questions correct'),
            style:const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      )),
          
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: summaryData),
            TextButton(onPressed: onRestart,
            style:
              TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 24),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue), child: const Text('Restart quiz'),
                
              
            )
          ],
        ),
      ),
    );
  }
}