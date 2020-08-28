import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int temp;
  Random r = Random();
  int leftDice = 1;
  int rightDice = 1;

  int getRandomDiceNumber() {
    return r.nextInt(6) + 1;
  }

  void updateDice() {
    setState(() {
      leftDice = getRandomDiceNumber();
      rightDice = getRandomDiceNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                updateDice();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                updateDice();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          )
        ],
      ),
    );
  }
}
