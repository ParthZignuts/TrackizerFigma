import 'package:flutter/cupertino.dart';

class PasswordStrengthProvider extends ChangeNotifier {
   String password='';
  double strength = 0;
  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  String displayText = 'Please enter a password';

  void checkPassword(String value) {
    password = value.trim();

    if (password.isEmpty) {
      strength = 0;
      displayText = 'Please enter you password';
    } else if (password.length < 6) {
      strength = 1 / 4;
      displayText = 'Your password is too short';
    } else if (password.length < 8) {
      strength = 2 / 4;
      displayText = 'Your password is acceptable but not strong';
    } else {
      if (!letterReg.hasMatch(password) || !numReg.hasMatch(password)) {
        // Password length >= 8
        // But doesn't contain both letter and digit characters
        strength = 3 / 4;
        displayText = 'Your password is strong';
      } else {
        strength = 1;
        displayText = 'Your password is great';
      }
    }
    notifyListeners();
  }
}
