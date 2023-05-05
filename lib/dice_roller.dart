import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  var random;
  void diceroll() {
    setState(() {
      random = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$random.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: diceroll,
          style: TextButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 39, 39, 39),
              backgroundColor: Color.fromARGB(255, 254, 229, 0),
              padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text('Role Dice'),
        )
      ],
    );
  }
}
