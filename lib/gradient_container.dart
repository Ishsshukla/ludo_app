import 'package:first_application/dice_roller.dart';
import 'package:first_application/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:first_application/dice_roller.dart';

const startAlignment =
    Alignment.topLeft; //const make sure assignment doesnt chng
const endAlignment = Alignment.bottomRight;

// GradientContainer.purple()

class GradientContainer extends StatelessWidget {
 const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Color.fromARGB(255, 164, 124, 233)],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child:DiceRoller(),
      ),
    
    );
  }
}
