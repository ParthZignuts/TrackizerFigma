import 'package:flutter/material.dart';
import '../../provider/passwordstrength/password_strength_provider.dart';
import '../theme/app_color.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.passStrengthProvider,
  });

  final PasswordStrengthProvider passStrengthProvider;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      onChanged: (value) => passStrengthProvider.checkPassword(value),
      style: const TextStyle(color: Colors.red),
      decoration: InputDecoration(
        hintText: 'Enter Password',
        labelText: 'Password',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: const BorderSide(color: Colors.red),
        ),
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white, fontSize: 24),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: AppColor.redAccent),
        ),
      ),
    );
  }
}
