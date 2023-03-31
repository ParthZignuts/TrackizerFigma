import 'package:flutter/cupertino.dart';

class CalenderScreenProvider extends ChangeNotifier {
  String _newValue = "January";

  String get newValue => _newValue;

  set newValue(String value) {
    _newValue = value;
  }

  void onDropDownItemChanged(String value) {
    newValue = value;
    notifyListeners();
  }
}
