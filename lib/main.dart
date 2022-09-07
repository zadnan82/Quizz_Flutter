import 'package:flutter/material.dart';
import 'package:quiz_app/categories.dart';
import 'package:quiz_app/drawer_items.dart';
import 'package:quiz_app/favorites.dart';
import 'package:quiz_app/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _questions = [
    "Vilka vinner allsvenskan?",
    "Vilken är din favorit maträtt?",
    "Vilket programmeringsspråk föredrar du?"
  ];

  final _answers1 = ["Hammarby", "Injera", "Dart"];
  final _answers2 = ["Aik", "Lasagne", "Swift"];
  final _answers3 = ["IFK Göteborg", "Pannkaka", "Python"];
  final _answers4 = ["Häcken", "Pasta", "Java"];

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerItems()
      ),
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: _questionIndex < 3
          ? Center(
              child: Column(
                children: <Widget>[
                  Text(
                    _questions[_questionIndex],
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _answerQuestion,
                      child: Text(
                        _answers1[_questionIndex],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _answerQuestion,
                      child: Text(
                        _answers2[_questionIndex],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _answerQuestion,
                      child: Text(
                        _answers3[_questionIndex],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _answerQuestion,
                      child: Text(
                        _answers4[_questionIndex],
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "Grattis",
                    style: TextStyle(fontSize: 50),
                  ),
                  ElevatedButton(
                    onPressed: _reset,
                    child: Icon(Icons.arrow_back),
                  )
                ],
              ),
            ),
    );
  }
}