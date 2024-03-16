import 'package:first/dice_roller.dart';
import 'package:first/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({key, required this.colors}) : super(key: key);

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
