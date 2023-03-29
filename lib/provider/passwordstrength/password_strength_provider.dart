import 'package:flutter/cupertino.dart';

class PasswordStrengthProvider extends ChangeNotifier {
  late String _password;
  double _strength = 0;

  double get strength => _strength;

  set strength(double value) {
    _strength = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  String displayText = 'Please enter a password';

  void checkPassword(String value) {
    _password = value.trim();

    if (_password.isEmpty) {
      _strength = 0;
      displayText = 'Please enter you password';
    } else if (_password.length < 6) {
      _strength = 1 / 4;
      displayText = 'Your password is too short';
    } else if (_password.length < 8) {
      _strength = 2 / 4;
      displayText = 'Your password is acceptable but not strong';
    } else {
      if (!letterReg.hasMatch(_password) || !numReg.hasMatch(_password)) {
        // Password length >= 8
        // But doesn't contain both letter and digit characters
        _strength = 3 / 4;
        displayText = 'Your password is strong';
      } else {
        // Password length >= 8
        // Password contains both letter and digit characters

        _strength = 1;
        displayText = 'Your password is great';
      }
    }
    notifyListeners();
  }
}
