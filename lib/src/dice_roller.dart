import "package:flutter/material.dart";
import "dart:math";

final _random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var curentDiceImage = 1;

  void roolDice() {
    setState(() {
      curentDiceImage = _random.nextInt(6) + 1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/dice-$curentDiceImage.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: roolDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
