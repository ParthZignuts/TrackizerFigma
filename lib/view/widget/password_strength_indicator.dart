import 'package:flutter/material.dart';

class PasswordStrenghtIndicator extends StatelessWidget {
  const PasswordStrenghtIndicator({
    super.key,
    required this.passStrength,
  });

  final double passStrength;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: passStrength,
      backgroundColor: Colors.grey[300],
      color: passStrength <= 1 / 4
          ? Colors.red
          : passStrength == 2 / 4
              ? Colors.yellow
              : passStrength == 3 / 4
                  ? Colors.blue
                  : Colors.green,
      minHeight: 8,
    );
  }
}
