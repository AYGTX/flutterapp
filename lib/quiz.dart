import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerChosen;
  final int qIndex;
  Quiz({@required this.questions,@required this.answerChosen,@required this.qIndex}){

  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          Question(questions[qIndex]['qText']),
          ...(questions[qIndex]['answers'] as List<Map<String,Object>>).map((answer)
          {return Answer(()=>answerChosen(answer['score']),answer['text']);}).toList()]
    );}
}
