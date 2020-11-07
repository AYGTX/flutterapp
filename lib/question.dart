import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qText;

  Question(this.qText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(15.0),
      child: Image.asset('assets/images/' + qText),
    );
  }
}
