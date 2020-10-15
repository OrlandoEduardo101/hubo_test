import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'question_controller.dart';

class QuestionPage extends StatefulWidget {
  final String title;
  const QuestionPage({Key key, this.title = "Question"}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState
    extends ModularState<QuestionPage, QuestionController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Pergunta:", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold ,fontSize: 18),),
            Text("Como você avalia meu trabalho?", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal ,fontSize: 22),),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                          color: Colors.white,
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.grey)),
                          child: Text("Muito Bom", style: TextStyle(color: Colors.grey, fontSize: 18),),
                          onPressed: () {}),
                  ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                          color: Colors.white,padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.grey)),
                          child: Text("Bom", style: TextStyle(color: Colors.grey, fontSize: 18),),
                          onPressed: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                          color: Colors.white,padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.grey)),
                          child: Text("Razoável", style: TextStyle(color: Colors.grey, fontSize: 18),),
                          onPressed: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                          color: Colors.white,padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.grey)),
                          child: Text("Terrível", style: TextStyle(color: Colors.grey, fontSize: 18),),
                          onPressed: () {}),
                        ),
                ],
              ),
            
          ],
        ),
      
    );
  }
}
