import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const RollDice());
}

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int activeDiceNum = 1;
  final random = Random();
  void rollDice() {
    setState(() {
      activeDiceNum = random.nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 80, 2, 38),
              Color.fromARGB(255, 84, 7, 98),
            ])),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/dice-$activeDiceNum.png',
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: rollDice,
                child: const Text('Roll Dice'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
