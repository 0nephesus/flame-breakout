import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int score = 0;

  void _incrementScore() {
    setState(() {
      score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _incrementScore,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text('Score: $score', style: TextStyle(color: Colors.black, fontSize: 24)),
        ),
      ),
    );
  }
}
