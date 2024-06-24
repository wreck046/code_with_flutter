import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/dice-2.png';

  void rollDice() {
    setState(() {
      activeImage = 'assets/dice-4.png';
    });
  }

  @override
  Widget build(context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
