import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Dice'),
        ),
        body: TextButton(
          onPressed: () {
            setState(() {
              leftDice = Random().nextInt(6) + 1;
              rightDice = Random().nextInt(6) + 1;
            });
          },
          child: Container(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/dice$leftDice.png'),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/dice$rightDice.png'),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
