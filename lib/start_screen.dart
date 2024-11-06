import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text("Try Your Luck on this Quiz",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_circle_right_outlined,
            size: 20),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              ),
            onPressed: startQuiz,
            label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}