import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordStrenghtIndicator extends StatelessWidget {
  const PasswordStrenghtIndicator({
    super.key,
    required this.passStrength,
  });

  final double passStrength;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:8.0.sp,right: 8.0.sp),
      child: LinearProgressIndicator(
        value: passStrength,
        backgroundColor: Colors.grey[300],
        color: passStrength <= 1 / 4
            ? Colors.red
            : passStrength == 2 / 4
                ? Colors.yellow
                : passStrength == 3 / 4
                    ? Colors.blue
                    : Colors.green,
        minHeight: 4,
      ),
    );
  }
}
