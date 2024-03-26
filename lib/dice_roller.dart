import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentdiceRoll = 2;

  void rollDice() {
    currentdiceRoll = randomizer.nextInt(6) + 1; // 0 to 6
    setState(() {});

    // print('changinng');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-images/dice-$currentdiceRoll.png',
          width: 200,
        ),

        const SizedBox(height: 20), //padding widget

        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white60,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
