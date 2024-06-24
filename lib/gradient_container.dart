import 'package:code_with_flutter/dice_roller.dart';
import 'package:code_with_flutter/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colorsChangeable, {
    super.key,
    /* required this.colorsChangeable */
  });

  const GradientContainer.yellow(
    color1,
    color2,
    this.colorsChangeable, {
    super.key,
  });
  final Color color1 = Colors.yellow;
  final Color color2 = Colors.yellowAccent;
  final List<Color> colorsChangeable;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsChangeable,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
