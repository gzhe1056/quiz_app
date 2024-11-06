import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];

    return const Padding(padding: EdgeInsets.symmetric(vertical:  8),
    child: Row(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [

      ],
    ),
    );
  }
}