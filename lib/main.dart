import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main(){
runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
var _totalScore=0;
  var _qIndex=0;
  void _answerChosen(score){
    if(_qIndex<_questions.length){
      setState(() {
      });
      _qIndex++;
      _totalScore +=score;
  }}
  var _questions= [
    {'qText':"rabbit.jpg",'answers':[{'text':"1",'score':10},{'text':"2",'score':12},{'text':"3",'score':0}]},
  ];
  @override
Widget build(BuildContext context){
  return MaterialApp(home:Scaffold(
    appBar: AppBar(title: Text('My first app'),),
    body: _qIndex < _questions.length ?
        Quiz(
          questions:_questions,
          answerChosen:_answerChosen,
          qIndex: _qIndex,
        ):
    Result(_totalScore)
  ),);

}
}