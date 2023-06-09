import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNum = 1;
  int RightDiceNum = 1;

  void changeDiceFace () {
    setState(() {
      LeftDiceNum = Random().nextInt(6) + 1 ;
      RightDiceNum = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
                onPressed: () {
                 changeDiceFace();
                },
                child: Image.asset('images/dice$LeftDiceNum.png')
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$RightDiceNum.png')
            ),
          ),
        ],
      ),
    );
  }
}
