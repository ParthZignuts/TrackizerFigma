import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:trackizer/provider/passwordstrength/password_strength_provider.dart';
import 'package:trackizer/theme/app_color.dart';

class PasswordStrenghtIndicator extends StatelessWidget {
  const PasswordStrenghtIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.sp, right: 8.0.sp),
      child: Consumer<PasswordStrengthProvider>(
        builder: (context, value, child) {
          return LinearProgressIndicator(
            value: (value.password.isEmpty)?0.0 : value.strength,
            backgroundColor: Colors.grey[300],
            color: value.strength <= 1 / 4
                ? AppColor.red
                : value.strength == 2 / 4
                    ? AppColor.yellow
                    : value.strength == 3 / 4
                        ? AppColor.blue
                        : AppColor.green,
            minHeight: 4,
          );
        },
      ),
    );
  }
}
